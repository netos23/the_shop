import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/navigation/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: AppTypography.bodySmall,
          bodyMedium: AppTypography.mediumBodySmall12pt,
          labelLarge: AppTypography.mediumBodySmallWhite,
          titleMedium: AppTypography.title,
          bodyLarge: AppTypography.mediumBodySmall16pt,
          titleSmall: AppTypography.grayHintText,
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
        extensions:  [
          const ExtraAppColors(
            surface: AppColor.gray,
            border: AppColor.border,
            onSurface: AppColor.darkGray,
          ),
          ExtraAppTypography(
            bodySmall: AppTypography.mediumBodySmall12pt,
          )
        ],
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
