import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class CustomFeaturedListView extends StatelessWidget {
  final String image;
  final String text;
  const CustomFeaturedListView(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Image.asset(
              image,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.1),
                    const Icon(
                      Icons.favorite_outline,
                      color: AppColor.kprimaryColor,
                    ),
                  ],
                ),
                const Text(
                  "400.00",
                  style: TextStyle(
                    color: AppColor.kprimaryColor,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "456.00",
                  style: TextStyle(
                      color: AppColor.hintColor,
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
