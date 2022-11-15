import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helper/constants/app_colors.dart';

class AppTFF extends StatelessWidget {
  const AppTFF({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
  });
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
      // margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              child: Icon(
                icon,
                size: 25.w,
              ),
            ),
            hintStyle: TextStyle(
                fontSize: 15.sp,
                color: grayColor,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
