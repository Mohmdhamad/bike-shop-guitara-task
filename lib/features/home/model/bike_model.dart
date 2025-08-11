import 'package:tasks/core/constants/app_images.dart';

class BikeModel {
  final String name;
  final String model;
  final String image;
  final String price;
  final bool isFavorite;

  BikeModel({
    required this.image,
    required this.name,
    required this.model,
    required this.price,
    required this.isFavorite,
  });
}

List<BikeModel> bikes = [
  BikeModel(
    name: 'Rood Bike',
    model: 'PEUGEOT-LR01',
    price: '\$ 1,999,99',
    isFavorite: true,
    image: AppImages.bike1,
  ),
  BikeModel(
    name: 'Rood helmet',
    model: 'SMITH-Trade',
    price: '\$ 120',
    isFavorite: false,
    image: AppImages.helmet,
  ),
  BikeModel(
    name: 'Electric bike',
    model: 'CARBON-R01',
    price: '\$ 2,499,99',
    isFavorite: true,
    image: AppImages.mainBike,
  ),
  BikeModel(
    name: 'Road bike',
    model: 'PEUGEOT-LR01',
    price: '\$ 1,499,99',
    isFavorite: false,
    image: AppImages.bike2,
  ),
];
