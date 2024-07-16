import 'package:flutter/material.dart';
import 'package:senior_code_task/core/utils/app_color.dart';

class CustomTextFromFiled extends StatelessWidget {
  const CustomTextFromFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        fillColor: AppColor.white,
        filled: true,
        hintText: "Search what you need",
        hintStyle: TextStyle(
          color: AppColor.hintColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
