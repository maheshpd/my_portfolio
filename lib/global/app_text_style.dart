import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  }

  static TextStyle monteseratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

  static TextStyle headingStyles() {
    return GoogleFonts.rubikMoonrocks(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2);
  }

  static TextStyle normalStyle() {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}
