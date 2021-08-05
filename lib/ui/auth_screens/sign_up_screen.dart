import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/components/custom_button.dart';
import 'package:gallery_test/components/custom_cancel_appBar.dart';
import 'package:gallery_test/components/custom_date_time_picker.dart';
import 'package:gallery_test/components/custom_red_underline.dart';
import 'package:gallery_test/components/custom_text_field.dart';
import 'package:gallery_test/ui/bottom_nav_screens/bottom_nav_screens.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(context),
      body: SafeArea(
          child: SingleChildScrollView(
            
        child: Container(
          width: width,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: height / 20,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              CustomRedUnderline(),
              SizedBox(height: height / 14),
              CustomTextField(
                hintText: "User Name",
                isObscure: false,
                suffixIcon: Icon(Icons.person),
              ),
              SizedBox(
                height: height / 26,
              ),
              CustomDateTimePicker(
                title: "BirthDay",
              ),
              SizedBox(
                height: height / 26,
              ),
              CustomTextField(
                hintText: "Email",
                isObscure: false,
                suffixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: height / 26,
              ),
              CustomTextField(
                hintText: "Password",
                isObscure: false,
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: height / 26,
              ),
              CustomTextField(
                hintText: "Confrim password",
                isObscure: false,
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: height / 20,
              ),
              CustomButton(
                title: "Sign In",
                buttonColor: black,
                textColor: white,
                width: width / 3,
                context: context,
              ),
              SizedBox(height: 16),
              CustomButton(
                title: "Sign Up",
                path: BottomNavScreens(),
                buttonColor: white,
                textColor: black,
                width: width / 3,
                context: context,
              ),
              SizedBox(height: 42,)
            ],
          ),
        ),
      )),
    );
  }
}
