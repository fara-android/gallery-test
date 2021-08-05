import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/ui/welcome_screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: white,),
        debugShowCheckedModeBanner: false,
        title: 'Gallery Test',
        home: SplashScreen());
  }
}
