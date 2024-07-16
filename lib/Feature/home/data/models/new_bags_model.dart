import '../../../../core/utils/app_images.dart';

class NewBagsModel {
  final String image;
  final String name;
  final String price;

  NewBagsModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<NewBagsModel> newBags = [
  NewBagsModel(image: AppImages.bag1, name: "Brown Candy", price: "234.90"),
  NewBagsModel(image: AppImages.bag2, name: "Pink Bag", price: "500.00"),
  NewBagsModel(image: AppImages.bag1, name: "Offwhite", price: "344.89"),
  NewBagsModel(image: AppImages.bag1, name: "Brown Candy", price: "234.90"),
  NewBagsModel(image: AppImages.bag2, name: "Pink Bag", price: "500.00"),
];
