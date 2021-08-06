import 'package:flutter/material.dart';

class ImageModel {
  final Image image;
  final String name;
  final String description =
      "DescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionTextDescriptionText";
  final String userName;

  ImageModel(this.image, this.name, this.userName);
}

class ImageList {
  static List<ImageModel> imageModelList = [
    ImageModel(Image.asset("assets/images/imageOne.png"), "User1", "Username1"),
    ImageModel(Image.asset("assets/images/imageTwo.png"), "User2", "Username2"),
    ImageModel(Image.asset("assets/images/imageThree.png"), "User3", "Username3"),
    ImageModel(Image.asset("assets/images/imageFour.png"), "User4", "Username4"),
    ImageModel(Image.asset("assets/images/imageOne.png"), "User5", "Username5"),
    ImageModel(Image.asset("assets/images/imageTwo.png"), "User6", "Username6"),
    ImageModel(Image.asset("assets/images/imageThree.png"), "User7", "Username7"),
    ImageModel(Image.asset("assets/images/imageFour.png"), "User8", "Username8"),
  ];
}
