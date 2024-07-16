import '../../../../core/utils/app_images.dart';

class NewWeddingModel {
  final String image;
  final String name;
  final String price;

  NewWeddingModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<NewWeddingModel> newWedding = [
  NewWeddingModel(image: AppImages.wed1, name: "Wdding Cards", price: "234.90"),
  NewWeddingModel(image: AppImages.wed2, name: "Wdding Cakes", price: "500.00"),
  NewWeddingModel(
      image: AppImages.wed1, name: "Organizing Event", price: "344.89"),
  NewWeddingModel(image: AppImages.wed1, name: "Wdding Cards", price: "234.90"),
  NewWeddingModel(image: AppImages.wed2, name: "Wdding Cakes", price: "500.00"),
];
