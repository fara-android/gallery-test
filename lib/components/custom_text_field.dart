import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  @required final bool? isObscure;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.suffixIcon, this.isObscure, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        cursorColor: grey,
        obscureText: isObscure!,
        decoration: InputDecoration(
          hintText: hintText.toString(),
          focusColor: underlineColor,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0),
          ),
        ),
      ),
    );
  }
}
