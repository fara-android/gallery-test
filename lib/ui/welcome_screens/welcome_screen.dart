import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/components/custom_button.dart';
import 'package:gallery_test/ui/auth_screens/sign_in_screen.dart';
import 'package:gallery_test/ui/auth_screens/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height / 6),
                Image.asset(
                  "assets/images/logo.png",
                  width: width / 2,
                ),
                SizedBox(height: height / 20),
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height / 16,
                ),
                CustomButton(
                  title: "Create an account",
                  buttonColor: black,
                  textColor: white,
                  path: SignUpScreen(),
                  context: context,
                ),
                SizedBox(
                  height: 12,
                ),
                CustomButton(
                  title: "I already have an account",
                  buttonColor: white,
                  textColor: black,
                  path: SignInScreen(),
                  context: context,
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildButton(String title, Color buttonColor, Color textColor,
      double width, BuildContext context, Widget path) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => path));
      },
      child: Container(
          height: 42,
          width: width,
          padding: EdgeInsets.all(1),
          color: Colors.black,
          child: Container(
            height: 42,
            width: width,
            color: buttonColor,
            padding: EdgeInsets.all(4),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
// "I already have an account", white, black, width,
                    // context, SignInScreen()
// "Create new account", black, white, width, context,
                   // SignUpScreen()
// 