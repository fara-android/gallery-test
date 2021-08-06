import 'package:flutter/material.dart';

import 'package:gallery_test/models/image_model.dart';
import 'package:gallery_test/ui/bottom_nav_screens/add_photo/published_photo.dart';

class CustomGridViewForNew extends StatefulWidget {
  CustomGridViewForNew({Key? key}) : super(key: key);

  @override
  _CustomGridViewForNew createState() => _CustomGridViewForNew();
}

class _CustomGridViewForNew extends State<CustomGridViewForNew> {
  ImageList list = ImageList();
  @override
  Widget build(BuildContext context) {
 
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
            ImageList.imageModelList.length,
            (index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PublishedScareen(
                                  index: index,
                                )));
                  },
                  child: Container(
                    child: ImageList.imageModelList[index].image,
                  ),
                )));
  }
}
