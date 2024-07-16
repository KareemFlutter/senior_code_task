import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomAppText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomAppText(
      {super.key,
      required this.text,
      this.textColor,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor ?? AppColor.black,
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
