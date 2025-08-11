import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks/core/constants/colors.dart';

class AppTextStyles {
  static TextStyle titleStyle({
    Color color = AppColors.white,
    double textSize = 20.0,
  }) {
    return GoogleFonts.poppins().copyWith(
      fontSize: textSize,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle midStyle({
    Color color = AppColors.white,
    double textSize = 13.0,
  }) {
    return GoogleFonts.poppins().copyWith(
      fontSize: textSize,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle hashStyle({
    Color color = AppColors.grey,
    double textSize = 14.0,
  }) {
    return TextStyle(
      color: color,
      fontSize: textSize,
    );
  }
}
