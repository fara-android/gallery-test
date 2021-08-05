import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_grid_view_for_new.dart';

class NewPhotoTabScreen extends StatefulWidget {
  NewPhotoTabScreen({Key? key}) : super(key: key);

  @override
  _NewPhotoTabScreenState createState() => _NewPhotoTabScreenState();
}

class _NewPhotoTabScreenState extends State<NewPhotoTabScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGridViewForNew();
  }
}
