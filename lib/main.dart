import 'package:flutter/material.dart';
import 'package:travel_p/home_tab.dart';
import 'package:travel_p/trang_ca_nhan.dart';
import 'tim_kiem.dart';

void main() {
  runApp(MaterialApp(
    title: "Travel",
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(controller: _tabController, children: [
          home_tab(),
          search_tab(),
          Text("Tab 3"),
          Text("Tab 4"),
          trang_ca_nhan(),
        ]),
        bottomNavigationBar: TabBar(
            labelColor: Colors.blueAccent,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.house_outlined,
                  color: Colors.blueAccent,
                ),
                text: "Trang chủ",
              ),
              Tab(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.blueAccent,
                ),
                text: "Tìm kiếm",
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                  color: Colors.blueAccent,
                ),
                text: "Bản đồ",
              ),
              Tab(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blueAccent,
                ),
                text: "Thông báo",
              ),
              Tab(
                icon: Icon(
                  Icons.dehaze,
                  color: Colors.blueAccent,
                ),
                text: "Xem thêm",
              ),
            ]));
  }
}
