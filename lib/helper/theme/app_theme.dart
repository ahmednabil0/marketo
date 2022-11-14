import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

ThemeData getThemeDate() {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 2.w),
        hintStyle: const TextStyle(
          color: Color(0xffA6B0BD),
        ),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.r),
          ),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.r),
          ),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Color(0x000000ff),
          secondary: Color(0x000000ff),
          onSecondary: Color(0x000000ff),
          error: errorColor,
          onError: errorColor,
          background: backgroundColor,
          onBackground: backgroundColor,
          surface: Color(0x000000ff),
          onSurface: Color(0x000000ff)));
}
