import 'package:flutter/material.dart';

import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/components/custom_button.dart';
import 'package:gallery_test/components/custom_cancel_appBar.dart';
import 'package:gallery_test/components/custom_red_underline.dart';
import 'package:gallery_test/components/custom_text_field.dart';
import 'package:gallery_test/ui/auth_screens/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Icon _icon = Icon(Icons.visibility_off_outlined);
  bool _isObscureText = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: width,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: height / 8,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                      color: black, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CustomRedUnderline(),
                SizedBox(height: height / 12),
                CustomTextField(
                  isObscure: false,
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                ),
                SizedBox(
                  height: height / 24,
                ),
                CustomTextField(
                  isObscure: _isObscureText,
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_isObscureText == true) {
                        setState(() {
                          _isObscureText = false;
                          _icon = Icon(Icons.visibility);
                        });
                      } else {
                        setState(() {
                          _isObscureText = true;
                          _icon = Icon(Icons.visibility_off_outlined);
                        });
                      }
                    },
                    icon: _icon,
                  ),
                ),
                SizedBox(height: 6),
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot login or password ?",
                      style: TextStyle(color: grey, fontSize: 12),
                    )),
                SizedBox(height: height / 20),
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
                  path: SignUpScreen(),
                  buttonColor: white,
                  textColor: black,
                  width: width / 3,
                  context: context,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
