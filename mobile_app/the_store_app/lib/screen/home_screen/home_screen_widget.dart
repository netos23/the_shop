import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/navigation/app_router.dart';

import 'home_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for HomeScreen module
@RoutePage()
class HomeScreenWidget extends ElementaryWidget<IHomeScreenWidgetModel> {
  const HomeScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomeScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomeScreenWidgetModel wm) {
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        CatalogTab(),
        BasketTab(),
        FavoritesTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            CustomBottomNavigationBarItem(
              icon: Icons.grid_view,
              label: 'Витрина',
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.manage_search,
              label: 'Каталог',
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.shopping_bag_outlined,
              label: 'Корзина',
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.favorite_outline,
              label: 'Избранное',
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.person_outline,
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}
