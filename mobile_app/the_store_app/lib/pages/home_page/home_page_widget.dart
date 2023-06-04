import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page_wm.dart';

// TODO: cover with documentation
/// Main widget for HomePage module
@RoutePage()
class HomePageWidget extends ElementaryWidget<IHomePageWidgetModel> {
  const HomePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomePageWidgetModel wm) {
    return kIsWeb ? const _WebPage() : const _MobilePage();
  }
}

class _MobilePage extends StatelessWidget {
  const _MobilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        CatalogTab(),
        BasketTab(),
        FavoritesTab(),
        UserProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return StreamBuilder(
            stream: AppComponents().cartUseCase.cart.stream,
            initialData: AppComponents().cartUseCase.cart.valueOrNull,
            builder: (context, snapshot) {
              final data = snapshot.data;
              final count = data?.count.toDouble() ?? 0;

              if (tabsRouter.activeIndex == 2 && data != null) {
                FirebaseAnalytics.instance.logViewCart(
                  currency: 'RUB',
                  value: data.price.toDouble(),
                  items: data.products
                      .map(
                        (p) => AnalyticsEventItem(
                            currency: 'RUB',
                            itemId: p.product.id.toString(),
                            itemName: p.product.name,
                            quantity: p.count,
                            price: p.product.price.toDouble(),
                            discount: ((p.product.oldPrice ?? p.product.price) -
                                    p.product.price)
                                .toDouble()),
                      )
                      .toList(),
                );
              }
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
                    badgeChar: count > 0 ? count.toString() : null,
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
            });
      },
    );
  }
}

class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required IconData icon,
    required String label,
    String? badgeChar,
  }) : super(
          icon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          label: label,
          activeIcon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          backgroundColor: Colors.transparent,
        );
}

class _NavigationBarIcon extends StatelessWidget {
  const _NavigationBarIcon({
    required this.icon,
    this.badgeChar,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String? badgeChar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          icon,
          size: 25,
        ),
        Visibility(
          visible: badgeChar != null && badgeChar != '0',
          child: Positioned(
            right: -10,
            top: -4,
            child: _Badge(
              char: badgeChar ?? '',
            ),
          ),
        )
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.char,
    Key? key,
  }) : super(key: key);

  final String char;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: theme.colorScheme.error,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: theme.colorScheme.onError,
        ),
      ),
      constraints: const BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: FittedBox(
          child: Text(
            char,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onError,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _WebPage extends StatelessWidget {
  const _WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return AutoRouter(
      builder: (context, child) {
        const tabs = [
          ShowCaseTab(),
          CatalogTab(),
          BasketTab(),
          UserProfileTab(),
        ];

        // we check for active route index by using
        // router.isRouteActive method
        var activeIndex = tabs.indexWhere(
          (d) => context.router.isRouteActive(d.routeName),
        );
        // there might be no active route until router is mounted
        // so we play safe
        if (activeIndex == -1) {
          activeIndex = 0;
        }
        return LayoutBuilder(
          builder: (context, constrains) {
            BoxConstraints bounds;

            final width = constrains.maxWidth;
            if (width <= 700) {
              bounds = constrains;
            } else {
              bounds = constrains.copyWith(
                minWidth: 0,
                maxWidth: max(width * 0.7, 700),
              );
            }

            return ColoredBox(
              color: Theme.of(context).colorScheme.background,
              child: Center(
                child: ConstrainedBox(
                  constraints: bounds,
                  child: Row(
                    children: [
                      NavigationRail(
                        labelType: NavigationRailLabelType.selected,
                        destinations: [
                          NavigationRailDestination(
                            label: Text(localizations.blog),
                            icon: const Icon(
                              Icons.home_outlined,
                            ),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.catalog),
                            icon: const Icon(Icons.apps_rounded),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.basket),
                            icon: const Icon(Icons.shopping_cart_outlined),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.profile),
                            icon: const Icon(Icons.person_outline),
                          ),
                        ],
                        selectedIndex: activeIndex,
                        onDestinationSelected: (index) {
                          // use navigate instead of push so you won't have
                          // many useless route stacks
                          context.navigateTo(tabs[index]);
                        },
                      ),
                      // child is the rendered route stack
                      Expanded(child: child)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
