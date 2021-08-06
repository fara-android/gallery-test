import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_grid_view_for_new.dart';
import 'package:gallery_test/ui/bottom_nav_screens/profile_bottom_detail.dart';




class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          actions: [
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(right: 12),
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilDetaile()));
                },
               icon:Icon(Icons.settings,
                color: Colors.grey,)
              ),
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 16, left: 16, top: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/userPhoto.png",
                    width: 120, height: 120, alignment: Alignment.center),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "User Name",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 46,
                ),
                Row(
                  children: [
                    Text(
                      "Views:",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    Text(
                      "999+",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Loaded",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    Text(
                      "999+",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 12),
                Container(
                  height: height/2,
                  child: CustomGridViewForNew(),                  
                ),
                SizedBox(height: 24)
              ],
            ),
          ),
        ),
      ),
    );
  }
}