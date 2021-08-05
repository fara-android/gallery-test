import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_container_for_grid.dart';

class CustomGridViewForNew extends StatefulWidget {
  CustomGridViewForNew({Key? key}) : super(key: key);

  @override
  _CustomGridViewForNew createState() => _CustomGridViewForNew();
}

class _CustomGridViewForNew extends State<CustomGridViewForNew> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
        CustomContainerForGrid(imagePath: "assets/images/imageOne.png"),
      ],
    );
  }
}
