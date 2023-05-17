import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract interface class IThemeProvider {
  ThemeData get theme;

  TextTheme get textTheme;

  ColorScheme get colorScheme;

  ExtraAppTypography? get extraAppTypography;

  ExtraAppColors? get extraAppColors;
}

mixin ThemeProvider {
  BuildContext get context;

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  ExtraAppTypography get extraAppTypography => theme.extension();

  ExtraAppColors get extraAppColors => theme.extension();
}
