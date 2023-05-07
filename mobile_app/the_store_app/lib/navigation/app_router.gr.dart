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
    StartingCityRoute.name: (routeData) {
      final args = routeData.argsAs<StartingCityRouteArgs>(
          orElse: () => const StartingCityRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StartingCityScreenWidget(
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
  };
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
/// [StartingCityScreenWidget]
class StartingCityRoute extends PageRouteInfo<StartingCityRouteArgs> {
  StartingCityRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultStartingCityScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          StartingCityRoute.name,
          args: StartingCityRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'StartingCityRoute';

  static const PageInfo<StartingCityRouteArgs> page =
      PageInfo<StartingCityRouteArgs>(name);
}

class StartingCityRouteArgs {
  const StartingCityRouteArgs({
    this.key,
    this.wmFactory = defaultStartingCityScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'StartingCityRouteArgs{key: $key, wmFactory: $wmFactory}';
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
