import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  static final TextStyle mediumBodySmallWhite = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
