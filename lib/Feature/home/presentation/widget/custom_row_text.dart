import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/widget/custom_app_text.dart';

class CustomRowText extends StatelessWidget {
  final String text;
  const CustomRowText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 4,
          child: CustomAppText(text: text),
        ),
        const Flexible(
          child: CustomAppText(
            text: "See All",
            textColor: AppColor.kprimaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
