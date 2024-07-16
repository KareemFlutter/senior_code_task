import '../../../../core/utils/app_images.dart';

class NewAntiqesModel {
  final String image;
  final String name;
  final String price;

  NewAntiqesModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<NewAntiqesModel> newAntiqes = [
  NewAntiqesModel(image: AppImages.ant1, name: "Resin", price: "234.90"),
  NewAntiqesModel(image: AppImages.ant2, name: "Pottery", price: "500.00"),
  NewAntiqesModel(image: AppImages.ant1, name: "Pottery Clay", price: "344.89"),
  NewAntiqesModel(image: AppImages.ant1, name: "Resin", price: "234.90"),
  NewAntiqesModel(image: AppImages.ant2, name: "Pottery", price: "500.00"),
];
