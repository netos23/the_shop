import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/screens/address_screen/address_screen.dart';
import 'package:the_store_app/screens/basket_screen/basket_screen.dart';
import 'package:the_store_app/screens/catalog_screen/catalog_screen.dart';
import 'package:the_store_app/screens/favourites_screen/favourites_screen.dart';
import 'package:the_store_app/screens/home_screen/home_screen.dart';
import 'package:the_store_app/screens/profile_screen/profile_screen.dart';
import 'package:the_store_app/screens/screens.dart';
import 'package:the_store_app/screens/show_case_screen/show_case_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: CityListRoute.page,
        ),
        AutoRoute(
          page: MapPointsRoute.page,
        ),
        AutoRoute(
          page: AddressRoute.page,
        ),
        AutoRoute(page: StartingMethodRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShowCaseRoute.page,
                )
              ],
            ),
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRoute.page,
                )
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: BasketRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FavouritesRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRoute.page,
                )
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'FavoritesTab')
class FavoritesTabPage extends AutoRouter {
  const FavoritesTabPage({super.key});
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketTabPage extends AutoRouter {
  const BasketTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
