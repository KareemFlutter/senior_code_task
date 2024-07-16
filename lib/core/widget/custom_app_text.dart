import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomAppText extends StatelessWidget {
  final String text;
  const CustomAppText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColor.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
