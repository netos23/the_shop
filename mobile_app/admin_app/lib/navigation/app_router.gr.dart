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
  final Map<String, PageFactory> pagesMap = {};
}
/*

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
*/
