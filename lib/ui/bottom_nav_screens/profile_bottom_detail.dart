import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_date_time_picker.dart';
import 'package:gallery_test/components/custom_text_field.dart';
import 'package:gallery_test/ui/auth_screens/sign_in_screen.dart';

class ProfilDetaile extends StatefulWidget {
  ProfilDetaile({Key? key}) : super(key: key);

  @override
  _ProfilDetaileState createState() => _ProfilDetaileState();
}

class _ProfilDetaileState extends State<ProfilDetaile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: Container(
            padding: EdgeInsets.only(left: 4),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 4),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(right: 16, left: 16, top: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/images/userPhoto.png",
                        width: 120, height: 120, alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal data",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          hintText: "User Name",
                          suffixIcon: Icon(Icons.person),
                          isObscure: false,
                        ),
                        SizedBox(height: 20),
                        CustomDateTimePicker(
                          title: "",
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "E-mail adress",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          hintText: "gosjdkal@iod.ty",
                          suffixIcon: Icon(Icons.mail),
                          isObscure: false,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          hintText: "Old password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                          isObscure: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(
                          hintText: "New password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                          isObscure: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(
                          hintText: "Confirm password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                          isObscure: false,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "You can delete your account",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInScreen()));
                          },
                          child: Text(
                            "Sing Out",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.red),
                          ),
                        ),
                        SizedBox(height: 36)
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
