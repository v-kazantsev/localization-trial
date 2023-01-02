import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static TextTheme lightTextTheme = const TextTheme(
    bodyText1: TextStyle(                           // text on buttons
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: AppColors.accent,
    ),
    bodyText2: TextStyle(                          // top menu text
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    headline1: TextStyle(                          // appBar title
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      color: AppColors.accent,
    )
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.pale,
      ),
      fontFamily: 'Roboto',
      textTheme: lightTextTheme,
    );
  }
}