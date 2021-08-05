import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  @required
  final bool? isObscure;
  final TextEditingController? controller;
  
  final String? labelText;
  final int? maxLines; 

  const CustomTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.isObscure,
    this.controller,
    
    this.labelText, this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: TextFormField(
        textAlign: TextAlign.start,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        maxLines: maxLines,
        cursorColor: grey,
        obscureText: isObscure!,
        decoration: InputDecoration(
          labelText: labelText,
          hintTextDirection: TextDirection.ltr,
          contentPadding:
              EdgeInsets.all(12),
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
