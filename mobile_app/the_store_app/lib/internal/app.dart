import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/domain/geo/city_service.dart';
import 'package:the_store_app/internal/di_container.dart';
import 'package:the_store_app/navigation/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              side: MaterialStateProperty.all<BorderSide>(const BorderSide(
                width: 1,
                color: AppColor.border,
              ))),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(shape: const RoundedRectangleBorder()),
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          TextTheme(
            bodySmall: AppTypography.bodySmall,
            bodyMedium: AppTypography.mediumBodySmall12pt,
            labelMedium: AppTypography.buttonMedium,
            titleMedium: AppTypography.title,
            bodyLarge: AppTypography.mediumBodySmall16pt,
            titleSmall: AppTypography.grayHintText,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.black,
          onPrimary: AppColor.white,
          secondary: AppColor.black50,
          secondaryContainer: AppColor.darkerGray, //for darker text
          onSecondary: AppColor.black,
          error: AppColor.red,
          onError: AppColor.white,
          background: AppColor.white,
          onBackground: AppColor.black,
          surface: AppColor.white,
          onSurface: AppColor.black,
          surfaceVariant: AppColor.grayTextField,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTypography.title.copyWith(
            color: AppColor.black,
          ),
          color: AppColor.white,
          elevation: 0,
        ),

        scaffoldBackgroundColor: AppColor.white,
        tabBarTheme: const TabBarTheme(
          labelColor: AppColor.black,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColor.black,
            ),
          ),
        ),
        extensions: [
          const ExtraAppColors(
            surface: AppColor.gray,
            border: AppColor.border,
            onSurface: AppColor.darkGray,
          ),
          ExtraAppTypography(
            bodySmall: AppTypography.mediumBodySmall12pt,
          ),
        ],
      ),
      routerConfig: _appRouter.config(
        deepLinkBuilder: (d) {
          final cityService = DiContainer()<CityService>();
          final deliveryService = DiContainer()<DeliveryService>();
          final city = cityService.controller.valueOrNull;
          final delivery = deliveryService.controller.valueOrNull;

          PageRouteInfo page;

          if (city == null) {
            page = OnboardingRoute();
          } else if (delivery == null) {
            page = StartingMethodRoute();
          } else {
            page = HomeRoute();
          }

          return DeepLink(
            [page],
          );
        },
      ),
    );
  }
}
