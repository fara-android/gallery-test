
import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

PreferredSizeWidget customAppBar(BuildContext context){
  return AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              padding: EdgeInsets.only(top: 20, left: 8),
              child: Text(
                "cancel",
                style: TextStyle(color: grey, fontSize: 16),
              )),
        ),
      );
}