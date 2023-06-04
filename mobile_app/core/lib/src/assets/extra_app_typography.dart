import 'package:flutter/material.dart';

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
