import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "ScreenWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(
          page: StartingCityRoute.page,
          initial: true,
        ),
        AutoRoute(page: StartingMethodRoute.page),
      ];
}
