import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

ThemeData getThemeDate() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 2.r),
      hintStyle: const TextStyle(color: grayColor),
      fillColor: whiteColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        borderSide: const BorderSide(color: whiteColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        borderSide: const BorderSide(color: errorColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        borderSide: const BorderSide(color: whiteColor),
      ),
    ),
    primaryColor: primaryColor,
    backgroundColor: backgroundColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: blackColor,
      secondary: blackColor,
      onSecondary: blackColor,
      error: errorColor,
      onError: errorColor,
      background: backgroundColor,
      onBackground: backgroundColor,
      surface: blackColor,
      onSurface: blackColor,
    ),
  );
}
