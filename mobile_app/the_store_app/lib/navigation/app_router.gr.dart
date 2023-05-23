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
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>(
          orElse: () => const OrderDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailsScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    PointsListRoute.name: (routeData) {
      final args = routeData.argsAs<PointsListRouteArgs>(
          orElse: () => const PointsListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PointsListScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileDataUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDataUpdateRouteArgs>(
          orElse: () => const ProfileDataUpdateRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileDataUpdateScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileMainRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileMainRouteArgs>(
          orElse: () => const ProfileMainRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileMainScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileMyOrdersRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileMyOrdersRouteArgs>(
          orElse: () => const ProfileMyOrdersRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileMyOrdersScreenWidget(
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
/// [OrderDetailsScreenWidget]
class OrderDetailsRoute extends PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderDetailsScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const PageInfo<OrderDetailsRouteArgs> page =
      PageInfo<OrderDetailsRouteArgs>(name);
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    this.wmFactory = defaultOrderDetailsScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [PointsListScreenWidget]
class PointsListRoute extends PageRouteInfo<PointsListRouteArgs> {
  PointsListRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultPointsListScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          PointsListRoute.name,
          args: PointsListRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'PointsListRoute';

  static const PageInfo<PointsListRouteArgs> page =
      PageInfo<PointsListRouteArgs>(name);
}

class PointsListRouteArgs {
  const PointsListRouteArgs({
    this.key,
    this.wmFactory = defaultPointsListScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'PointsListRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileDataUpdateScreenWidget]
class ProfileDataUpdateRoute extends PageRouteInfo<ProfileDataUpdateRouteArgs> {
  ProfileDataUpdateRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileDataUpdateScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileDataUpdateRoute.name,
          args: ProfileDataUpdateRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDataUpdateRoute';

  static const PageInfo<ProfileDataUpdateRouteArgs> page =
      PageInfo<ProfileDataUpdateRouteArgs>(name);
}

class ProfileDataUpdateRouteArgs {
  const ProfileDataUpdateRouteArgs({
    this.key,
    this.wmFactory = defaultProfileDataUpdateScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileDataUpdateRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileMainScreenWidget]
class ProfileMainRoute extends PageRouteInfo<ProfileMainRouteArgs> {
  ProfileMainRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileMainScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileMainRoute.name,
          args: ProfileMainRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileMainRoute';

  static const PageInfo<ProfileMainRouteArgs> page =
      PageInfo<ProfileMainRouteArgs>(name);
}

class ProfileMainRouteArgs {
  const ProfileMainRouteArgs({
    this.key,
    this.wmFactory = defaultProfileMainScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileMainRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileMyOrdersScreenWidget]
class ProfileMyOrdersRoute extends PageRouteInfo<ProfileMyOrdersRouteArgs> {
  ProfileMyOrdersRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileMyOrdersScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileMyOrdersRoute.name,
          args: ProfileMyOrdersRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileMyOrdersRoute';

  static const PageInfo<ProfileMyOrdersRouteArgs> page =
      PageInfo<ProfileMyOrdersRouteArgs>(name);
}

class ProfileMyOrdersRouteArgs {
  const ProfileMyOrdersRouteArgs({
    this.key,
    this.wmFactory = defaultProfileMyOrdersScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileMyOrdersRouteArgs{key: $key, wmFactory: $wmFactory}';
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
