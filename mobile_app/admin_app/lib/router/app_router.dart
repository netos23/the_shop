import 'dart:async';

import 'package:admin_app/pages/edit_banner/edit_profile_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:admin_app/domain/models/profile.dart';
import 'package:admin_app/pages/auth_code_page/auth_code_page.dart';
import 'package:admin_app/pages/auth_page/auth_page.dart';
import 'package:admin_app/pages/home_page/home_page.dart';
import 'package:admin_app/pages/show_case_page/show_case_page.dart';
import 'package:admin_app/pages/uri_link_stream/web_view_page.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../pages/edit_profile_page/edit_profile_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: AuthCodeRoute.page),
        AutoRoute(page: WebViewerRoute.page),
        AutoRoute(page: EditBannerRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
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
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  page: EditProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];
}


@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}


@RoutePage(name: 'UserProfileTab')
class UserProfileTabPage extends AutoRouter {
  const UserProfileTabPage({super.key});
}
