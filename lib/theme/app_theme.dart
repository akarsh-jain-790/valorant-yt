import 'package:flutter/material.dart';
import 'package:valorant_yt/helper/color_sys.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
    primaryColor: ColorSys.kprimary,
    scaffoldBackgroundColor: ColorSys.kbackgroundColor,
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: ColorSys.kprimary,
        fontSize: 38,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: ColorSys.kprimary,
        fontSize: 20,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: ColorSys.kprimary,
        fontSize: 20,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
