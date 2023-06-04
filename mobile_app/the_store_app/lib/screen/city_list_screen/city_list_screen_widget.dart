import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screen/components/components.dart';
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
            return AddressLoader(
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
                var city = cities[index];
                return AddressTile(
                  title: city.name,
                  subtitle: city.region,
                  color: index.isEven ? evenBackground : oddBackground,
                  onTap: () => wm.onSelect(city),
                );
              },
            );
          },
        ),
      ),
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
