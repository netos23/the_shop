import 'dart:async';

import 'package:admin_app/pages/edit_banner/edit_profile_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:admin_app/domain/models/category.dart';
import 'package:admin_app/domain/models/order.dart';
import 'package:admin_app/domain/models/product.dart';
import 'package:admin_app/domain/models/product_with_count.dart';
import 'package:admin_app/domain/models/profile.dart';
import 'package:admin_app/feature/order_history/ui/order_history_page_scope.dart';
import 'package:admin_app/pages/auth_code_page/auth_code_page.dart';
import 'package:admin_app/pages/auth_page/auth_page.dart';
import 'package:admin_app/pages/cart_page/cart_page.dart';
import 'package:admin_app/pages/catalog_page/catalog_page.dart';
import 'package:admin_app/pages/category_page/category_page.dart';
import 'package:admin_app/pages/farm_product_registration_page/farm_product_registration_page.dart';
import 'package:admin_app/pages/home_page/home_page.dart';
import 'package:admin_app/pages/order_page/order_page.dart';
import 'package:admin_app/pages/order_result_page/order_result_page.dart';
import 'package:admin_app/pages/product_page/product_page.dart';
import 'package:admin_app/pages/profile_page/profile_page.dart';
import 'package:admin_app/pages/register_brand_page/register_brand_page_widget.dart';
import 'package:admin_app/pages/register_brand_page/register_brand_page_wm.dart';
import 'package:admin_app/pages/register_page/register_page.dart';
import 'package:admin_app/pages/show_case_page/show_case_page.dart';
import 'package:admin_app/pages/subscription_page/subscription_page.dart';
import 'package:admin_app/pages/uri_link_stream/web_view_page.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../pages/edit_profile_page/edit_profile_page.dart';
import '../pages/farm_show_case_page/farmer_showcase_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: AuthCodeRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: OrderResultRoute.page),
        AutoRoute(page: WebViewerRoute.page),
        AutoRoute(page: EditBannerRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  page: CategoryRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: CatalogRoute.page,
                ),
                AutoRoute(
                  path: 'product/:productId',
                  page: ProductRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'product/:productId',
                  page: ProductRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  page: ShowCaseRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  page: CartRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'product/:productId',
                  page: ProductRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  page: EditProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: ProfileRoute.page,

                ),
                AutoRoute(
                  path: 'product/:productId',
                  page: ProductRoute.page,
                ),
                AutoRoute(
                  page: FarmShowcaseRoute.page,
                ),
                AutoRoute(
                  page: FarmProductRegistrationRoute.page,
                ),

                AutoRoute(
                  page: RegisterBrandRoute.page,
                ),
                AutoRoute(
                  page: SubscriptionRoute.page,
                ),
                AutoRoute(
                  page: OrderHistoryRoute.page,
                ),
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

@RoutePage(name: 'UserProfileTab')
class UserProfileTabPage extends AutoRouter {
  const UserProfileTabPage({super.key});
}
