import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  AppText(
      {super.key,
      required this.txt,
      required this.color,
      required this.size,
      this.fw,
      this.ff});
  String txt;
  String? ff;
  Color color;
  double size;
  FontWeight? fw;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: ff ?? 'Cairo',
        fontWeight: fw ?? FontWeight.normal,
      ),
    );
  }
}
