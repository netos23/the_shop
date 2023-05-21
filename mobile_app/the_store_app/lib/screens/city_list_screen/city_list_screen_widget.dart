import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'city_list_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CityListScreen module
@RoutePage()
class CityListScreenWidget
    extends ElementaryWidget<ICityListScreenWidgetModel> {
  const CityListScreenWidget({
    super.key,
    WidgetModelFactory wmFactory = defaultCityListScreenWidgetModelFactory,
  }) : super(wmFactory);

  @override
  Widget build(ICityListScreenWidgetModel wm) {
    final evenBackground = wm.colorScheme.background;
    final oddBackground = wm.colorScheme.secondary;

    return UnFocusDetector(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Выбор города'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(44),
            child: SizedBox(
              height: 44,
              child: SearchWidget(
                controller: wm.searchController,
              ),
            ),
          ),
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.citiesState,
          loadingBuilder: (context, cities) {
            return _CityPreloader(
              evenBackground: evenBackground,
              oddBackground: oddBackground,
            );
          },
          builder: (context, citiesState) {
            final cities = citiesState ?? [];

            if (cities.isEmpty) {
              return const _EmptySearch();
            }

            return ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return _CityTile(
                  city: cities[index],
                  color: index.isEven ? evenBackground : oddBackground,
                  onTap: () => wm.onSelect(index),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _CityPreloader extends StatelessWidget {
  const _CityPreloader({
    required this.evenBackground,
    required this.oddBackground,
  });

  final Color evenBackground;
  final Color oddBackground;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _CityTileLoader(
          color: index.isEven ? evenBackground : oddBackground,
        );
      },
    );
  }
}

class _EmptySearch extends StatelessWidget {
  const _EmptySearch();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'К сожалению не нашлось города с таким названием :(',
          textAlign: TextAlign.center,
        ),
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
    final extraColors = Theme.of(context).extension<ExtraAppColors>()!;
    return ColoredBox(
      color: color,
      child: ListTile(
        title: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 10,
            width: 100,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 10,
            width: 150,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.3),
            ),
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
          title: Text(
            city.name,
          ),
          subtitle: Text(
            city.region,
          ),
        ),
      ),
    );
  }
}
