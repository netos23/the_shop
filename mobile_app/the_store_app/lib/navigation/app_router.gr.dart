// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CityListRoute.name: (routeData) {
      final args = routeData.argsAs<CityListRouteArgs>(
          orElse: () => const CityListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CityListScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    StartingMethodRoute.name: (routeData) {
      final args = routeData.argsAs<StartingMethodRouteArgs>(
          orElse: () => const StartingMethodRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StartingMethodScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardingScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    MapPointsRoute.name: (routeData) {
      final args = routeData.argsAs<MapPointsRouteArgs>(
          orElse: () => const MapPointsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MapPointsScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [CityListScreenWidget]
class CityListRoute extends PageRouteInfo<CityListRouteArgs> {
  CityListRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCityListScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CityListRoute.name,
          args: CityListRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CityListRoute';

  static const PageInfo<CityListRouteArgs> page =
      PageInfo<CityListRouteArgs>(name);
}

class CityListRouteArgs {
  const CityListRouteArgs({
    this.key,
    this.wmFactory = defaultCityListScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CityListRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [StartingMethodScreenWidget]
class StartingMethodRoute extends PageRouteInfo<StartingMethodRouteArgs> {
  StartingMethodRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultStartingMethodScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          StartingMethodRoute.name,
          args: StartingMethodRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'StartingMethodRoute';

  static const PageInfo<StartingMethodRouteArgs> page =
      PageInfo<StartingMethodRouteArgs>(name);
}

class StartingMethodRouteArgs {
  const StartingMethodRouteArgs({
    this.key,
    this.wmFactory = defaultStartingMethodScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'StartingMethodRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OnboardingScreenWidget]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOnboardingScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<OnboardingRouteArgs> page =
      PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.key,
    this.wmFactory = defaultOnboardingScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [MapPointsScreenWidget]
class MapPointsRoute extends PageRouteInfo<MapPointsRouteArgs> {
  MapPointsRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultMapPointsScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          MapPointsRoute.name,
          args: MapPointsRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'MapPointsRoute';

  static const PageInfo<MapPointsRouteArgs> page =
      PageInfo<MapPointsRouteArgs>(name);
}

class MapPointsRouteArgs {
  const MapPointsRouteArgs({
    this.key,
    this.wmFactory = defaultMapPointsScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'MapPointsRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
