import 'package:safarni/core/utils/app_assets.dart';

class OnbordingModel {
  final String image;
  final String title;

  OnbordingModel({required this.image, required this.title});

  static List<OnbordingModel> onbordingList = [
    OnbordingModel(
      image: AppAssets.imagesOnbordingOne,
      title: 'Find Your Dream Adventure Here',
    ),
    OnbordingModel(
      image: AppAssets.imagesOnbordingTwo,
      title: 'Easily save your favorite  journeys',
    ),
    OnbordingModel(
      image: AppAssets.imagesOnbordingThree,
      title: 'Plan Your Dream Trip With TripMate',
    ),
  ];
}
