import 'package:employee_attendance/page/home_tab/holiday_tab.dart';
import 'package:employee_attendance/page/home_tab/home_tab.dart';
import 'package:employee_attendance/page/home_tab/leaves_tab.dart';
import 'package:employee_attendance/page/home_tab/profile_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: const TabBarView(
            children: [
              HomeTab(),
              LeavesTab(),
              HolidayTab(),
              ProfileTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: const Color(0xFFffffff),
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.white,
        tabs: [
          Tab(
              icon: Icon(
            Icons.home,
            color: Color(0xff000000),
            size: 30,
          )),
          Tab(
              icon: Icon(
            Icons.calendar_month_rounded,
            color: Color(0xff000000),
            size: 30,
          )),
          Tab(
              icon: Icon(
            Icons.beach_access,
            color: Color(0xff000000),
            size: 30,
          )),
          Tab(
              icon: Icon(
            Icons.person,
            color: Color(0xff000000),
            size: 30,
          )),
        ],
      ),
    );
  }
}
