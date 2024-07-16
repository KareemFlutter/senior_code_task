import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class CustomDottedText extends StatelessWidget {
  const CustomDottedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      ":",
      style: TextStyle(
        color: AppColor.kprimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
