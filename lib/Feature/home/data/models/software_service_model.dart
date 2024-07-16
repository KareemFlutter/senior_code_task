import '../../../../core/utils/app_images.dart';

class SoftwareServiceModel {
  final String image;
  final String name;
  final String price;

  SoftwareServiceModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<SoftwareServiceModel> softwareService = [
  SoftwareServiceModel(
      image: AppImages.sof1, name: "Web Design", price: "234.90"),
  SoftwareServiceModel(
      image: AppImages.sof2, name: "Development", price: "500.00"),
  SoftwareServiceModel(
      image: AppImages.sof1, name: "Graghic Design", price: "344.89"),
  SoftwareServiceModel(
      image: AppImages.sof1, name: "Web Design", price: "234.90"),
  SoftwareServiceModel(
      image: AppImages.sof2, name: "Development", price: "500.00"),
];
