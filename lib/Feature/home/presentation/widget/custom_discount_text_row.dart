import 'package:flutter/material.dart';
import 'package:senior_code_task/core/widget/custom_app_text.dart';

import '../../../../core/utils/app_color.dart';
import 'custom_container_date.dart';
import 'custom_dotted_text.dart';

class CustomDiscountTextRow extends StatelessWidget {
  const CustomDiscountTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomAppText(text: "Discount ends in "),
            SizedBox(width: 4),
            Row(
              children: [
                CustomContainerDate(text: "02"),
                SizedBox(width: 4),
                CustomDottedText(),
                SizedBox(width: 4),
                CustomContainerDate(text: "24"),
                SizedBox(width: 4),
                CustomDottedText(),
                SizedBox(width: 4),
                CustomContainerDate(text: "09"),
              ],
            ),
          ],
        ),
        CustomAppText(
          text: "See All",
          textColor: AppColor.kprimaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ],
    );
  }
}
