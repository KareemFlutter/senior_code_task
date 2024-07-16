import 'package:flutter/material.dart';
import 'package:senior_code_task/Feature/main_navigation_bar/presentation/views/main_nvigation_bar_screen.dart';
import 'package:senior_code_task/core/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Senoir Code Task ',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
      ),
      home: const MainNvigationBarScreen(),
    );
  }
}
