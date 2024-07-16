import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class CustomListViewBody extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  const CustomListViewBody(
      {super.key,
      required this.image,
      required this.text,
      required this.price});

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
                    Text(text),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.favorite_outline,
                      color: AppColor.kprimaryColor,
                    ),
                  ],
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: AppColor.kprimaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
