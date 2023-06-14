import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';
import 'package:the_store_app/store_module/screen/map_points_screen/components/pickup_point_tile_loader.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import '../../../src/components/components.dart';
import 'components/pickup_point_tile.dart';
import 'map_points_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for MapPointsPage module
@RoutePage<DeliveryMethod>()
class MapPointsPageWidget
    extends ElementaryWidget<IMapPointsPageWidgetModel> {
  const MapPointsPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMapPointsPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMapPointsPageWidgetModel wm) {
    return Scaffold(
      backgroundColor: wm.colorScheme.background,
      appBar: AppBar(
        leading: BackButton(
          color: wm.colorScheme.primary,
        ),
        title: const Text('Пункты самовывоза'),
        bottom: TabBar(
          controller: wm.tabController,
          tabs: const [
            Tab(text: 'Карта'),
            Tab(text: 'Список'),
          ],
        ),
      ),
      body: PersistenceTabView(
        controller: wm.tabController,
        children: [
          _MapPage(wm: wm),
          _ListPage(wm: wm),
        ],
      ),
    );
  }
}

class _ListPage extends StatelessWidget {
  const _ListPage({
    required this.wm,
  });

  final IMapPointsPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final evenBackground = wm.colorScheme.background;
    final oddBackground = wm.colorScheme.secondary;

    return EntityStateNotifierBuilder(
      listenableEntityState: wm.pickupPointState,
      loadingBuilder: (context, _) {
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: 10),
              sliver: SliverToBoxAdapter(
                child: SearchWidget(
                  controller: wm.searchController,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return PickupPointTileLoader(
                    color: index.isEven ? evenBackground : oddBackground,
                  );
                },
              ),
            )
          ],
        );
      },
      builder: (context, mapObjects) {
        final points = mapObjects ?? [];
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: 10),
              sliver: SliverToBoxAdapter(
                child: SearchWidget(
                  controller: wm.searchController,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return PickupPointTile(
                    onTap: () => wm.openStore(points[index]),
                    point: points[index],
                    color: index.isEven ? evenBackground : oddBackground,
                    style: wm.textTheme.bodyMedium
                        ?.copyWith(color: wm.colorScheme.primary),
                  );
                },
                childCount: points.length,
              ),
            )
          ],
        );
      },
    );
  }
}

class _MapPage extends StatelessWidget {
  const _MapPage({
    required this.wm,
  });

  final IMapPointsPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.pickupPointState,
      builder: (context, pickupPoints) => YandexMap(
        mapObjects: wm.buildMapObjects(pickupPoints),
        onMapCreated: wm.onMapCreated,
      ),
    );
  }
}
