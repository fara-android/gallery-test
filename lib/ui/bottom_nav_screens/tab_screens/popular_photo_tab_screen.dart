import 'package:flutter/material.dart';
import 'package:gallery_test/components/custom_grid_view_for_new.dart';

class PopularPhotoTabScreen extends StatefulWidget {
  PopularPhotoTabScreen({Key? key}) : super(key: key);

  @override
  _PopularPhotoTabScreenState createState() => _PopularPhotoTabScreenState();
}

class _PopularPhotoTabScreenState extends State<PopularPhotoTabScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGridViewForNew();
  }
}