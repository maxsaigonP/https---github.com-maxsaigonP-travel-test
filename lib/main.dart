import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_p/home_tab.dart';
import 'package:travel_p/map_areas.dart';
import 'package:travel_p/splash_page1.dart';
import 'package:travel_p/trang_ca_nhan.dart';
import 'package:travel_p/xem_them_tab.dart';
import 'tim_kiem.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    home: const SplashPage(),
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
    _tabController = TabController(length: 4, vsync: this);
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
        const HomePage(),
        search_tab(),
        map_areas(),
        xem_them(),
      ]),
      bottomNavigationBar: TabBar(
        labelColor: const Color(0XFF0869E1),
        controller: _tabController,
        tabs: const [
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: Color(0XFF0869E1),
            ),
            text: "Trang chủ",
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Color(0XFF0869E1),
            ),
            text: "Tìm kiếm",
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.mapMarkedAlt,
              color: Color(0XFF0869E1),
            ),
            text: "Bản đồ",
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: Color(0XFF0869E1),
            ),
            text: "Xem thêm",
          ),
        ],
      ),
    );
  }
}
