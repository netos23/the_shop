import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/shop/shop_client.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';

// TODO: cover with documentation
/// Default Elementary model for MapPointsScreen module
class MapPointsScreenModel extends ElementaryModel {
  MapPointsScreenModel({
    required this.deliveryService,
    required this.shopClient,
    super.errorHandler,
  });

  final ShopClient shopClient;
  final DeliveryService deliveryService;

  final List<PickupPoint> _points = [];

  Future<List<PickupPoint>> getPoints([String? search]) async {
    if (_points.isEmpty) {
      try {
        final shops = await shopClient.getShops();
        _points.addAll(shops);
        return shops;
      } catch (error, stacktrace) {
        handleError(error, stackTrace: stacktrace);
        rethrow;
      }
    }

    Iterable<PickupPoint> points = _points;

    if (search != null) {
      points = points.where(
        (shop) => shop.shopAddress.startsWith(search),
      );
    }

    return points.toList();
  }
}
