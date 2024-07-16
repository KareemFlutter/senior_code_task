import 'package:flutter/material.dart';

class CustomPromotionListViewBody extends StatelessWidget {
  final String image;
  const CustomPromotionListViewBody({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
