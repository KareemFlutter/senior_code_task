import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class CustomContainerDate extends StatelessWidget {
  final String text;
  const CustomContainerDate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.kprimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColor.white),
      ),
    );
  }
}
