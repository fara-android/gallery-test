import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class AddPhotoBottomScreen extends StatefulWidget {
  AddPhotoBottomScreen({Key? key}) : super(key: key);

  @override
  _AddPhotoBottomScreenState createState() => _AddPhotoBottomScreenState();
}

class _AddPhotoBottomScreenState extends State<AddPhotoBottomScreen> {
  File? _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }
  Future getImageFromGallery() async{
    final imagefromGallery = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(imagefromGallery!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(height: height/2,width: width,child: _image == null ? Text("No Image") : Image.file(_image!)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [FloatingActionButton(
          child: Text("ds"),
          onPressed: () {
            getImage();
          },
          
        ),
        FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Text("ds"),
          onPressed: () {
            getImageFromGallery();
          },
          
        ),
        ]),
    );
  }
}
