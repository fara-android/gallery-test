import 'package:flutter/material.dart';

class ProfileBottomScreen extends StatefulWidget {
  ProfileBottomScreen({Key? key}) : super(key: key);

  @override
  _ProfileBottomScreenState createState() => _ProfileBottomScreenState();
}

class _ProfileBottomScreenState extends State<ProfileBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(),
        actions: [
          IconButton(
            onPressed: () {},
            
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
