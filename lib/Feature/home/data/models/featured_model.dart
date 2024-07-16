import '../../../../core/utils/app_images.dart';

class FeaturedModel {
  final String image;
  final String name;

  FeaturedModel({required this.image, required this.name});
}

List<FeaturedModel> featured = [
  FeaturedModel(image: AppImages.co, name: "Crochet"),
  FeaturedModel(image: AppImages.wood, name: "Wood"),
  FeaturedModel(image: AppImages.bag, name: "Bag"),
  FeaturedModel(image: AppImages.co, name: "Crochet"),
];
