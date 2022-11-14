import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helper/constants/app_colors.dart';
import 'text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.txt,
    this.onTap,
    this.w,
    this.h,
    this.color,
    this.sColor,
    this.tColor,
    super.key,
  });
  final String txt;
  final double? w;
  final double? h;
  final Color? color;
  final Color? sColor;
  final Color? tColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: w ?? 290.w,
        alignment: Alignment.center,
        height: h ?? 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50.r),
          ),
          color: color ?? primaryColor,
          boxShadow: [
            BoxShadow(
              color: sColor ?? scondaryColor.withOpacity(0.7),
              blurRadius: 1,
              offset: const Offset(2, 4),
              spreadRadius: -11,
            ),
          ],
        ),
        child: AppText(
          txt: txt,
          color: tColor ?? whiteColor,
          size: 20.sp,
          fw: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    required this.txt,
    this.onTap,
    this.tColor,
    this.fw,
    this.size,
    super.key,
  });
  final String txt;
  final double? size;
  final Color? tColor;
  final FontWeight? fw;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AppText(
        txt: txt,
        color: tColor ?? whiteColor,
        size: size ?? 20.sp,
        fw: fw ?? FontWeight.bold,
      ),
    );
  }
}
