import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_container_for_grid.dart';

class CustomGridViewForPopular extends StatefulWidget {
  CustomGridViewForPopular({Key? key}) : super(key: key);

  @override
  _CustomGridViewForPopular createState() => _CustomGridViewForPopular();
}

class _CustomGridViewForPopular extends State<CustomGridViewForPopular> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageTwo.png"),
      ],
    );
  }
}
