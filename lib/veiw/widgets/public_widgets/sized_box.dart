import 'package:flutter/material.dart';

import '../../../helper/constants/app_colors.dart';

class NewSizedBox extends StatelessWidget {
  const NewSizedBox({
    required this.child,
    super.key,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: child!,
      ),
    );
  }
}
