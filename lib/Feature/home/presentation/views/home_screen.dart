import 'package:flutter/material.dart';

import 'package:senior_code_task/Feature/home/data/models/featured_model.dart';
import 'package:senior_code_task/Feature/home/data/models/new_bags_model.dart';
import 'package:senior_code_task/Feature/home/data/models/new_clothes_moddel.dart';
import 'package:senior_code_task/Feature/home/data/models/promotion_model.dart';
import 'package:senior_code_task/Feature/home/presentation/widget/custom_featured_list_view.dart';
import 'package:senior_code_task/Feature/home/presentation/widget/custom_promotion_list_view_body.dart';
import 'package:senior_code_task/Feature/home/presentation/widget/custom_text_from_filed.dart';
import 'package:senior_code_task/core/utils/app_color.dart';
import 'package:senior_code_task/core/utils/app_images.dart';
import 'package:senior_code_task/core/widget/custom_list_view_body.dart';

import '../../../../core/widget/custom_app_text.dart';
import '../../data/models/new_antiqes_model.dart';
import '../../data/models/new_wedding_model.dart';
import '../../data/models/software_service_model.dart';
import '../widget/custom_discount_text_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  children: [
                    Flexible(
                      child: CustomTextFromFiled(),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      size: 36,
                      Icons.camera_alt,
                      color: AppColor.kprimaryColor,
                    )
                  ],
                ),
              ),
              Image.asset(
                AppImages.banner,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const CustomDiscountTextRow(),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomFeaturedListView(
                            image: featured[index].image,
                            text: featured[index].name,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: featured.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "Upcoming Promotion"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomPromotionListViewBody(
                            image: promotions[index],
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: promotions.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "New in Bags & Watchs"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomListViewBody(
                            image: newBags[index].image,
                            text: newBags[index].name,
                            price: newBags[index].price,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: newBags.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "New in Crochet & Clothes"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomListViewBody(
                            image: newClothes[index].image,
                            text: newClothes[index].name,
                            price: newClothes[index].price,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: newClothes.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "New in Antiqes & Ceramic"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomListViewBody(
                            image: newAntiqes[index].image,
                            text: newAntiqes[index].name,
                            price: newAntiqes[index].price,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: newAntiqes.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "New in Wedding & Scoial Event"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomListViewBody(
                            image: newWedding[index].image,
                            text: newWedding[index].name,
                            price: newWedding[index].price,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: newWedding.length,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CustomAppText(text: "Software Services"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return CustomListViewBody(
                            image: softwareService[index].image,
                            text: softwareService[index].name,
                            price: softwareService[index].price,
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 12);
                        },
                        itemCount: softwareService.length,
                      ),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
