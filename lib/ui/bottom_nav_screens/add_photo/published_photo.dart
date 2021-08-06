import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

import 'package:gallery_test/models/image_model.dart';

class PublishedScareen extends StatefulWidget {
  final int? index;
  PublishedScareen({Key? key, this.index}) : super(key: key);

  @override
  _PublishedScareenState createState() => _PublishedScareenState();
}

class _PublishedScareenState extends State<PublishedScareen> {
  ImageList list = ImageList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                widget.index != null
                    ? ImageList.imageModelList[widget.index!].image
                    : Text("data"),
                SizedBox(
                  height: 12,
                ),
                buildRow(
                  widget.index != null
                      ? ImageList.imageModelList[widget.index!].name
                      : "Err",
                  Colors.black,
                  20,
                  "999+",
                ),
                SizedBox(
                  height: 6,
                ),
                buildRow(
                  widget.index != null
                      ? ImageList.imageModelList[widget.index!].name
                      : "Err",
                  grey,
                  14,
                  "999+",
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    ImageList.imageModelList[widget.index!].description,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: Row(
                    children: [
                      InputChip(
                        label: Text('Animals'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InputChip(
                        disabledColor: Colors.blue,
                        label: Text(
                          'Animals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 64)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(
      String title, Color colorText, double textSize, String sufixText) {
    return Container(
      padding: EdgeInsets.only(right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: colorText,
                fontWeight: FontWeight.bold,
                fontSize: textSize),
          ),
          Row(children: [
            Text(
              sufixText,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ]),
        ],
      ),
    );
  }
}
