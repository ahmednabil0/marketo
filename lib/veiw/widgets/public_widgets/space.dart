import 'package:flutter/material.dart';

class HSizedBox extends StatelessWidget {
  const HSizedBox({
    required this.h,
    super.key,
  });
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * h,
    );
  }
}

class WSizedBox extends StatelessWidget {
  const WSizedBox({
    required this.w,
    super.key,
  });
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * w,
    );
  }
}
