import 'package:flutter/material.dart';

class CustomContainerForGrid extends StatelessWidget {
  final String? imagePath;
  const CustomContainerForGrid({Key? key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Image.asset(imagePath!),
        );
  }
}