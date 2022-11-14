import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

ThemeData getThemeDate() {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
        fillColor: const Color(0xffF6F6F6),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(10.w))),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(10.w))),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(10.w))),
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
