import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/ui/bottom_nav_screens/tab_screens/new_photo_tab_screen.dart';
import 'package:gallery_test/ui/bottom_nav_screens/tab_screens/popular_photo_tab_screen.dart';

class HomeBottomScreen extends StatefulWidget {
  HomeBottomScreen({Key? key}) : super(key: key);

  @override
  _HomeBottomScreenState createState() => _HomeBottomScreenState();
}

class _HomeBottomScreenState extends State<HomeBottomScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Set search field
          centerTitle: true,
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: blue,
              unselectedLabelColor: Colors.black,
              labelColor: blue,
              indicatorWeight: 1.0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: <Widget>[
                Tab(
                  text: "New",
                ),
                Tab(
                  text: "Popular",
                ),
              ]),
        ),
        body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: <Widget>[NewPhotoTabScreen(), PopularPhotoTabScreen()]));
  }
}
