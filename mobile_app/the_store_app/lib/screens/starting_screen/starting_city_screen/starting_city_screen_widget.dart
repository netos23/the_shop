import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'starting_city_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for StartingCityScreen module
@RoutePage()
class StartingCityScreenWidget
    extends ElementaryWidget<IStartingCityScreenWidgetModel> {
  const StartingCityScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultStartingCityScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IStartingCityScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выбор города'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: SearchWidget(
              controller: wm.searchController,
            ),
          ),
          EntityStateNotifierBuilder(
            listenableEntityState: wm.citiesState,
            loadingBuilder: (context, cities) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return _CityTileLoader(
                      color: index.isEven ? Colors.white : Colors.grey[300]!,
                    );
                  },
                ),
              );
            },
            builder: (context, cities) {
              if (cities == null) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return _CityTile(
                      city: cities[index],
                      color: index.isEven ? Colors.white : Colors.grey[300]!,
                      onTap: () => wm.onSelect(index),
                    );
                  },
                  childCount: cities.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _CityTileLoader extends StatelessWidget {
  const _CityTileLoader({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
      child: const ListTile(
        title: ColoredBox(
          color: Colors.grey,
          child: SizedBox(
            height: 10,
            width: 150,
          ),
        ),
        subtitle: ColoredBox(
          color: Colors.grey,
          child: SizedBox(
            height: 10,
            width: 300,
          ),
        ),
      ),
    );
  }
}

class _CityTile extends StatelessWidget {
  const _CityTile({
    Key? key,
    required this.city,
    required this.color,
    this.onTap,
  }) : super(key: key);

  final City city;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ColoredBox(
        color: color,
        child: ListTile(
          title: Text(city.name),
          subtitle: Text(city.region),
        ),
      ),
    );
  }
}
