import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../store_module/domain/delivery/delivery_service.dart';
import '../store_module/domain/geo/city_service.dart';
import '../store_module/internal/di_container.dart';
import 'color_schemes.g.dart';

final class AppTypography {
  AppTypography._();

  static final TextStyle title = GoogleFonts.montserrat(
    fontSize: 16,
    height: 1.32,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle bodySmall = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final TextStyle mediumBodySmall16pt = GoogleFonts.montserrat(
    fontSize: 16,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle mediumBodySmall12pt = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle mediumBodySmallBold = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle buttonMedium = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 1.3,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle grayHintText = GoogleFonts.montserrat(
    fontSize: 16,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
    color: Colors.grey[600],
  );
}

final class AppColor {
  AppColor._();

  static const Color black = Color(0xFF1F1F1F);
  static const Color black50 = Color(0xFFF5F5F5);
  static const Color border = Color(0xFFD2D1D1);
  static const Color white = Colors.white;
  static const Color gray = Color(0xFFF9F9F9);
  static const Color darkGray = Color(0xFF7D7D7D);
  static const Color darkerGray = Color(0xFF595959);
  static const Color red = Colors.red;
  static const Color grayTextField = Color(0xFFF0F0F0);
}

class ExtraAppColors extends ThemeExtension<ExtraAppColors> {
  final Color surface;
  final Color border;
  final Color onSurface;

  const ExtraAppColors({
    required this.surface,
    required this.onSurface,
    required this.border,
  });

  @override
  ThemeExtension<ExtraAppColors> copyWith({
    Color? surface,
    Color? border,
    Color? onSurface,
  }) {
    return ExtraAppColors(
      surface: surface ?? this.surface,
      border: border ?? this.border,
      onSurface: onSurface ?? this.onSurface,
    );
  }

  @override
  ThemeExtension<ExtraAppColors> lerp(ExtraAppColors? other, double t) {
    return ExtraAppColors(
      surface: Color.lerp(surface, other?.surface, t)!,
      border: Color.lerp(border, other?.border, t)!,
      onSurface: Color.lerp(onSurface, other?.onSurface, t)!,
    );
  }
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ValueNotifier<ThemeMode>>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )),
              side: MaterialStateProperty.all<BorderSide>(const BorderSide(
                width: 1,
                color: AppColor.black,
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
          secondaryContainer: AppColor.darkerGray,
          //for darker text
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
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.montserrat(
            fontSize: 22,
            color: darkColorScheme.onBackground,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(),
      ),
      highContrastTheme: ThemeData(
        useMaterial3: true,
        colorScheme: hightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      highContrastDarkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: hightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: themeMode.value,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [AnaliticsObserver()],
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

class ExtraAppTypography extends ThemeExtension<ExtraAppTypography> {
  final TextStyle bodySmall;

  const ExtraAppTypography({
    required this.bodySmall,
  });

  @override
  ThemeExtension<ExtraAppTypography> copyWith({
    TextStyle? bodySmall,
  }) {
    return ExtraAppTypography(
      bodySmall: bodySmall ?? this.bodySmall,
    );
  }

  @override
  ThemeExtension<ExtraAppTypography> lerp(ExtraAppTypography? other, double t) {
    return ExtraAppTypography(
      bodySmall: TextStyle.lerp(bodySmall, other?.bodySmall, t)!,
    );
  }
}

class AnaliticsObserver extends AutoRouteObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {
        'firebase_screen': route.data?.name ?? 'unknown',
        'firebase_screen_class': route.runtimeType.toString(),
      },
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {
        'firebase_screen': route.name ?? 'unknown',
        'firebase_screen_class': route.runtimeType.toString(),
      },
    );
  }
}
