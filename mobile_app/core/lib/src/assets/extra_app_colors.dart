import 'package:flutter/material.dart';

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
