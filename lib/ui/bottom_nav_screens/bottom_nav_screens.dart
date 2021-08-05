import 'package:flutter/material.dart';
import 'package:gallery_test/ui/bottom_nav_screens/add_photo_bottom_screen.dart';
import 'package:gallery_test/ui/bottom_nav_screens/profile_bottom_screen.dart';
import 'package:gallery_test/ui/bottom_nav_screens/tab_screens/home_screen.dart';

class BottomNavScreens extends StatefulWidget {
  const BottomNavScreens({Key? key}) : super(key: key);

  @override
  _BottomNavScreensState createState() => _BottomNavScreensState();
}

class _BottomNavScreensState extends State<BottomNavScreens> {
  int selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeBottomScreen(),
    AddPhotoBottomScreen(),
    ProfileBottomScreen()
  ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
      ),
    );
  }
}
