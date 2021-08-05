import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

class CustomRedUnderline extends StatelessWidget {
  const CustomRedUnderline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width/3.5,
      height: 2,
      color: underlineColor,
    );
  }
}