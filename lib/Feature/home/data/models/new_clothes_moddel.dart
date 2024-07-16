import '../../../../core/utils/app_images.dart';

class NewClothesModdel {
  final String image;
  final String name;
  final String price;

  NewClothesModdel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<NewClothesModdel> newClothes = [
  NewClothesModdel(image: AppImages.col1, name: "Shawl", price: "234.90"),
  NewClothesModdel(image: AppImages.col2, name: "Cardigan", price: "500.00"),
  NewClothesModdel(image: AppImages.col1, name: "Blouse", price: "344.89"),
  NewClothesModdel(image: AppImages.col1, name: "Shawl", price: "234.90"),
  NewClothesModdel(image: AppImages.col2, name: "Cardigan", price: "500.00"),
];
