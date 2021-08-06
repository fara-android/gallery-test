import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? buttonColor;
  final Color? textColor;
  final double? width;
  final BuildContext? context;
  final Widget? path;
  const CustomButton(
      {Key? key,
      this.title,
      this.buttonColor,
      this.textColor,
      this.width,
      this.context,
      this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => path!));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.black),
        height: 42,
        width: width,
        padding: EdgeInsets.all(1),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: buttonColor!,
          ),
          height: 42,
          width: width,
          padding: EdgeInsets.all(4),
          child: Center(
            child: Text(
              title!,
              style: TextStyle(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
