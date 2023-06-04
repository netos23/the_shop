import 'package:admin_app/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:admin_app/internal/di_container.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          TextTheme(
            bodySmall: AppTypography.bodySmall,
            bodyMedium: AppTypography.mediumBodySmall12pt,
            labelLarge: AppTypography.mediumBodySmall16pt,
            titleMedium: AppTypography.title,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.black,
          onPrimary: AppColor.white,
          secondary: AppColor.black50,
          onSecondary: AppColor.black,
          error: AppColor.red,
          onError: AppColor.white,
          background: AppColor.white,
          onBackground: AppColor.black,
          surface: AppColor.white,
          onSurface: AppColor.black,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTypography.title.copyWith(
            color: AppColor.black,
          ),
          color: AppColor.white,
          elevation: 0,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(shape: const RoundedRectangleBorder()),
        ),
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
      routerConfig: _appRouter.config(),
    );
  }
}
