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
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    FavoritesTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesTabPage(),
      );
    },
    ShowCaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCaseTabPage(),
      );
    },
    BasketTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasketTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    FavouritesRoute.name: (routeData) {
      final args = routeData.argsAs<FavouritesRouteArgs>(
          orElse: () => const FavouritesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavouritesScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
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
    BasketRoute.name: (routeData) {
      final args = routeData.argsAs<BasketRouteArgs>(
          orElse: () => const BasketRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BasketScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    StartingMethodRoute.name: (routeData) {
      final args = routeData.argsAs<StartingMethodRouteArgs>(
          orElse: () => const StartingMethodRouteArgs());
      return AutoRoutePage<DeliveryMethod>(
        routeData: routeData,
        child: StartingMethodScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>(
          orElse: () => const CatalogRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    MapPointsRoute.name: (routeData) {
      final args = routeData.argsAs<MapPointsRouteArgs>(
          orElse: () => const MapPointsRouteArgs());
      return AutoRoutePage<DeliveryMethod>(
        routeData: routeData,
        child: MapPointsScreenWidget(
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
          pages: args.pages,
          wmFactory: args.wmFactory,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AddressRoute.name: (routeData) {
      final args = routeData.argsAs<AddressRouteArgs>(
          orElse: () => const AddressRouteArgs());
      return AutoRoutePage<DeliveryMethod>(
        routeData: routeData,
        child: AddressScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShowCaseRoute.name: (routeData) {
      final args = routeData.argsAs<ShowCaseRouteArgs>(
          orElse: () => const ShowCaseRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShowCaseScreenWidget(
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
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailsScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
          index: args.index,
        ),
      );
    },
  };
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritesTabPage]
class FavoritesTab extends PageRouteInfo<void> {
  const FavoritesTab({List<PageRouteInfo>? children})
      : super(
          FavoritesTab.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowCaseTabPage]
class ShowCaseTab extends PageRouteInfo<void> {
  const ShowCaseTab({List<PageRouteInfo>? children})
      : super(
          ShowCaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BasketTabPage]
class BasketTab extends PageRouteInfo<void> {
  const BasketTab({List<PageRouteInfo>? children})
      : super(
          BasketTab.name,
          initialChildren: children,
        );

  static const String name = 'BasketTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritesScreenWidget]
class FavouritesRoute extends PageRouteInfo<FavouritesRouteArgs> {
  FavouritesRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFavouritesScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FavouritesRoute.name,
          args: FavouritesRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FavouritesRoute';

  static const PageInfo<FavouritesRouteArgs> page =
      PageInfo<FavouritesRouteArgs>(name);
}

class FavouritesRouteArgs {
  const FavouritesRouteArgs({
    this.key,
    this.wmFactory = defaultFavouritesScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FavouritesRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
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
/// [BasketScreenWidget]
class BasketRoute extends PageRouteInfo<BasketRouteArgs> {
  BasketRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultBasketScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          BasketRoute.name,
          args: BasketRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'BasketRoute';

  static const PageInfo<BasketRouteArgs> page = PageInfo<BasketRouteArgs>(name);
}

class BasketRouteArgs {
  const BasketRouteArgs({
    this.key,
    this.wmFactory = defaultBasketScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'BasketRouteArgs{key: $key, wmFactory: $wmFactory}';
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
/// [CatalogScreenWidget]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCatalogScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    this.key,
    this.wmFactory = defaultCatalogScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, wmFactory: $wmFactory}';
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

/// generated route for
/// [OnboardingScreenWidget]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    Key? key,
    List<Widget> pages = const [
      OnboardingPage(
          text: 'ПОКУПАЙТЕ ПРОДУКТЫ НЕ ВЫХОДЯ ИЗ ДОМА ИЛИ '
              'ПОЛУЧАЙТЕ БОНУСЫ ЗА ПРОГУЛКУ ЗА НИМИ.',
          assetPath: 'assets/images/basket2.png'),
      OnboardingPage(
          text: 'УДОБНАЯ НАВИГАЦИЯ ВНУТРИ МАГАЗИНА НЕ ПОЗВОЛИТ '
              'ВАМ ПОТЕРЯТЬСЯ ИЛИ ЧТО ТО ЗАБЫТЬ.',
          assetPath: 'assets/images/vegitabales.png'),
      OnboardingPage(
          text: 'ДЕЛИТЕСЬ КОРЗИНОЙ С БЛИЗКИМИ И ДРУЗЬЯМИ.',
          assetPath: 'assets/images/quadrocopter.png'),
      OnboardingPage(
          text: 'ПРИЯТНОЙ РАБОТЫ С ПРИЛОЖЕНИЕМ.',
          assetPath: 'assets/images/shop_cart.png')
    ],
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOnboardingScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            pages: pages,
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
    this.pages = const [
      OnboardingPage(
          text: 'ПОКУПАЙТЕ ПРОДУКТЫ НЕ ВЫХОДЯ ИЗ ДОМА ИЛИ '
              'ПОЛУЧАЙТЕ БОНУСЫ ЗА ПРОГУЛКУ ЗА НИМИ.',
          assetPath: 'assets/images/basket2.png'),
      OnboardingPage(
          text: 'УДОБНАЯ НАВИГАЦИЯ ВНУТРИ МАГАЗИНА НЕ ПОЗВОЛИТ '
              'ВАМ ПОТЕРЯТЬСЯ ИЛИ ЧТО ТО ЗАБЫТЬ.',
          assetPath: 'assets/images/vegitabales.png'),
      OnboardingPage(
          text: 'ДЕЛИТЕСЬ КОРЗИНОЙ С БЛИЗКИМИ И ДРУЗЬЯМИ.',
          assetPath: 'assets/images/quadrocopter.png'),
      OnboardingPage(
          text: 'ПРИЯТНОЙ РАБОТЫ С ПРИЛОЖЕНИЕМ.',
          assetPath: 'assets/images/shop_cart.png')
    ],
    this.wmFactory = defaultOnboardingScreenWidgetModelFactory,
  });

  final Key? key;

  final List<Widget> pages;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, pages: $pages, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [HomeScreenWidget]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultHomeScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = defaultHomeScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AddressScreenWidget]
class AddressRoute extends PageRouteInfo<AddressRouteArgs> {
  AddressRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAddressScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AddressRoute.name,
          args: AddressRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static const PageInfo<AddressRouteArgs> page =
      PageInfo<AddressRouteArgs>(name);
}

class AddressRouteArgs {
  const AddressRouteArgs({
    this.key,
    this.wmFactory = defaultAddressScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AddressRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShowCaseScreenWidget]
class ShowCaseRoute extends PageRouteInfo<ShowCaseRouteArgs> {
  ShowCaseRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShowCaseScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShowCaseRoute.name,
          args: ShowCaseRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ShowCaseRoute';

  static const PageInfo<ShowCaseRouteArgs> page =
      PageInfo<ShowCaseRouteArgs>(name);
}

class ShowCaseRouteArgs {
  const ShowCaseRouteArgs({
    this.key,
    this.wmFactory = defaultShowCaseScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShowCaseRouteArgs{key: $key, wmFactory: $wmFactory}';
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
/// [OrderDetailsScreenWidget]
class OrderDetailsRoute extends PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderDetailsScreenWidgetModelFactory,
    required int index,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            wmFactory: wmFactory,
            index: index,
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
    required this.index,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  final int index;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, wmFactory: $wmFactory, index: $index}';
  }
}
