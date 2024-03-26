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
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: Colors.white,
        tabs: [
          Tab(icon: Image.asset("assets/images/home.png")),
          Tab(icon: Image.asset("assets/images/leave.png")),
          Tab(icon: Image.asset("assets/images/holiday.png")),
          Tab(icon: Image.asset("assets/images/profile.png")),
        ],
      ),
    );
  }
}
