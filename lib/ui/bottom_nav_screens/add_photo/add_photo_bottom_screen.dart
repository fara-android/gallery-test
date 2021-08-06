import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/components/custom_chips.dart';

import 'package:gallery_test/components/custom_text_field.dart';
import 'package:gallery_test/models/image_model.dart';
import 'package:gallery_test/ui/bottom_nav_screens/bottom_nav_screens.dart';
import 'package:gallery_test/ui/bottom_nav_screens/tab_screens/new_photo_tab_screen.dart';

import 'dart:io';

import 'package:image_picker/image_picker.dart';

class AddPhotoBottomScreen extends StatefulWidget {
  AddPhotoBottomScreen({Key? key}) : super(key: key);

  @override
  _AddPhotoBottomScreenState createState() => _AddPhotoBottomScreenState();
}

class _AddPhotoBottomScreenState extends State<AddPhotoBottomScreen> {
  TextEditingController? nameController;
  TextEditingController? descriptioncontroller;

  File? _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      try {
        setState(() {
          _image = File(image!.path);
        });
      } catch (e) {
        setState(() {
          Text("data");
        });
      }
    });
  }

  Future getImageFromGallery() async {
    final imagefromGallery =
        await imagePicker.pickImage(source: ImageSource.gallery);
    try {
      setState(() {
        _image = File(imagefromGallery!.path);
      });
    } catch (e) {
      setState(() {
        Text("data");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: InkWell(
              onTap: () {
                if (_image != null) {
                  addItemToList(ImageList.imageModelList,
                      convertFileToImage(_image!), "name", "username");
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.green,
                      content: Container(
                        height: height / 30,
                        alignment: Alignment.bottomCenter,
                        child: Text("Photo Added succesfull"),
                      ),
                    ));
                  });
                } else {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Container(
                        height: height / 30,
                        alignment: Alignment.bottomCenter,
                        child: Text("Fill all fields!"),
                      ),
                    ));
                  });
                }
              },
              child: Text(
                "Add",
                style: TextStyle(color: Color(0xffCF497E)),
              ),
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left_outlined),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavScreens()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: height / 3,
                  color: Colors.grey[300],
                  // height: height / 2.5,
                  width: width,
                  child: Center(
                    child: _image == null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Select Image"),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        iconSize: 48,
                                        onPressed: () {
                                          getImage();
                                        },
                                        icon: Icon(
                                          Icons.camera_alt,
                                          color: blue,
                                        )),
                                    IconButton(
                                        iconSize: 48,
                                        onPressed: () {
                                          getImageFromGallery();
                                        },
                                        icon: Icon(
                                          Icons.photo,
                                          color: blue,
                                        )),
                                  ])
                            ],
                          )
                        : InkWell(
                            onDoubleTap: () {
                              if (_image != null) {
                                setState(() {
                                  _image = null;
                                });
                              }
                            },
                            child: Image.file(
                              _image!,
                              height: height / 3,
                            ),
                          ),
                  )),
              SizedBox(height: 8),
              _image != null ? Text("Double Tap to Delete") : SizedBox(),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "Name",
                      maxLines: 1,
                      isObscure: false,
                    ),
                    SizedBox(height: 12),
                    CustomTextField(
                      hintText: "Description",
                      maxLines: 6,
                      isObscure: false,
                    ),
                    CustomChips()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addItemToList(
      List<ImageModel> list, Image image, String name, String description) {
    ImageList.imageModelList.add(new ImageModel(image, name, description));
  }

  Image convertFileToImage(File picture) {
    List<int> imageBase64 = picture.readAsBytesSync();
    String imageAsString = base64Encode(imageBase64);
    Uint8List uint8list = base64Decode(imageAsString);
    Image image = Image.memory(uint8list);
    return image;
  }
}
