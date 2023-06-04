import 'dart:ui';

import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';
import 'package:the_store_app/internal/di_container.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'package:the_store_app/screen/map_points_screen/components/pickup_point_bottom_sheet.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'map_points_screen_model.dart';
import 'map_points_screen_widget.dart';

abstract class IMapPointsScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TabController get tabController;

  EntityStateNotifier<List<PickupPoint>> get pickupPointState;

  TextEditingController get searchController;

  Future<void> onMapCreated(YandexMapController controller);

  Future<void> openStore(PickupPoint point);

  List<MapObject> buildMapObjects(List<PickupPoint>? pickupPoints);
}

MapPointsScreenWidgetModel defaultMapPointsScreenWidgetModelFactory(
    BuildContext context) {
  return MapPointsScreenWidgetModel(
    MapPointsScreenModel(
      errorHandler: context.read(),
      deliveryService: DiContainer()<DeliveryService>(),
      shopClient: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for MapPointsScreenWidget
class MapPointsScreenWidgetModel
    extends WidgetModel<MapPointsScreenWidget, MapPointsScreenModel>
    with SingleTickerProviderWidgetModelMixin, ThemeProvider
    implements IMapPointsScreenWidgetModel {
  MapPointsScreenWidgetModel(super.model);

  YandexMapController? _mapController;

  @override
  late final tabController = TabController(
    length: 2,
    vsync: this,
  );

  @override
  final searchController = TextEditingController();

  @override
  final pickupPointState = EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    pickupPointState.loading();
    searchController.addListener(_makeSearch);
  }

  Future<void> _makeSearch() async {
    try {
      final points = await model.getPoints(searchController.text);
      pickupPointState.content(points);

      if (points.isEmpty) {
        return;
      }

      final lat = points.map((p) => p.lat).toList()..sort();
      final lon = points.map((p) => p.lon).toList()..sort();

      _moveToPoint(
        lat: lat[lat.length ~/ 2].toDouble(),
        lon: lon[lon.length ~/ 2].toDouble(),
      );
    } catch (e) {
      context.showSnackBar('Не удалось загрузить магазины.');
    }
  }

  @override
  Future<void> onMapCreated(YandexMapController controller) async {
    _mapController = controller;

    await _makeSearch();
  }

  void _moveToPoint({
    required double lat,
    required double lon,
    double zoom = 15,
  }) {
    _mapController?.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          zoom: zoom,
          target: Point(
            latitude: lat,
            longitude: lon,
          ),
        ),
      ),
      animation: const MapAnimation(),
    );
  }

  @override
  void dispose() {
    searchController.removeListener(_makeSearch);
    pickupPointState.dispose();
    super.dispose();
  }

  @override
  List<MapObject> buildMapObjects(List<PickupPoint>? pickupPoints) {
    final points = pickupPoints ?? [];

    return [
      _createCluster(
        points.map(_mapPickupPoint).toList(),
      ),
    ];
  }

  ClusterizedPlacemarkCollection _createCluster(
    List<PlacemarkMapObject> placeMarks,
  ) {
    return ClusterizedPlacemarkCollection(
      mapId: const MapObjectId('stores_cluster'),
      radius: 30,
      minZoom: 15,
      onClusterAdded: (_, cluster) async {
        return cluster.copyWith(
          appearance: cluster.appearance.copyWith(
            opacity: 1,
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromBytes(
                  await _createClusterIcon(cluster),
                ),
                scale: 1.5,
                zIndex: 10,
              ),
            ),
          ),
        );
      },
      onClusterTap: (_, cluster) async {
        await _moveToCluster(cluster);
      },
      placemarks: placeMarks,
    );
  }

  Future<Uint8List> _createClusterIcon(Cluster cluster) async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(100, 100);
    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final strokePaint = Paint()
      // ..color = Theme.of(context).primaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;
    const radius = 40.0;

    final textPainter = TextPainter(
      text: TextSpan(
        text: cluster.size.toString(),
        style: TextStyle(
          color: colorScheme.primary,
          fontSize: 45,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final textOffset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    final circleOffset = Offset(
      size.height / 2,
      size.width / 2,
    );

    canvas.drawCircle(circleOffset, radius, fillPaint);
    canvas.drawCircle(circleOffset, radius, strokePaint);
    textPainter.paint(canvas, textOffset);

    final image = await recorder.endRecording().toImage(
          size.width.toInt(),
          size.height.toInt(),
        );
    final pngBytes = await image.toByteData(format: ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }

  Future<void> _moveToCluster(Cluster cluster) async {
    final currentCameraPosition = await _mapController?.getCameraPosition();
    final zoom = currentCameraPosition?.zoom ?? 15;
    _moveToPoint(
      lat: cluster.appearance.point.latitude,
      lon: cluster.appearance.point.longitude,
      zoom: zoom + 3,
    );
  }

  @override
  Future<void> openStore(PickupPoint point) async {
    if (tabController.index == 1) {
      tabController.index = 0;
    }

    _moveToPoint(
      lat: point.lat.toDouble(),
      lon: point.lon.toDouble(),
      zoom: 17,
    );
    final data = await showModalBottomSheet<PickupPoint>(
      context: context,
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      backgroundColor: colorScheme.background,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (context) => PickupBottomSheet(point: point),
    );
    // TODO(netos23): persist
    if (data != null) {
      router.pop(
        DeliveryMethod.shop(point: data),
      );
    }
  }

  PlacemarkMapObject _mapPickupPoint(PickupPoint point) {
    return PlacemarkMapObject(
      opacity: 1.0,
      mapId: MapObjectId(point.id.toString()),
      point: Point(
        latitude: point.lat.toDouble(),
        longitude: point.lon.toDouble(),
      ),
      onTap: (_, __) => openStore(point),
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage(
            'assets/images/icon_cart.png',
          ),
          scale: 0.9,
          isFlat: true,
        ),
      ),
    );
  }
}
