import 'package:first_app/pages/first_tab.dart' as FirstTab;
import 'package:first_app/pages/second_tab.dart' as SecondTab;
import 'package:flutter/material.dart';

class MyAdsScreen extends StatefulWidget {
  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'My Ads',
            style: TextStyle(color: Color(0xFF3A3030)),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
              indicatorColor: Color(0xFFC4C4C4),
              indicatorWeight: 4,
              labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              unselectedLabelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              controller: _tabController,
              tabs: [
                Tab(
                  icon: Icon(Icons.shopping_bag),
                  text: 'My Ads',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'My Favourites',
                ),
              ],
              labelColor: Colors.black),
        ),
        body: TabBarView(controller: _tabController, children: [
          new FirstTab.FirstTab(),
          new SecondTab.SecondTab(),
        ]),
      ),
    );
  }
}
