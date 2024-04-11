import 'package:employee_attendance/page/home/home_tab/holiday_tab.dart';
import 'package:employee_attendance/page/home/home_tab/home_tab.dart';
import 'package:employee_attendance/page/home/home_tab/leaves_tab.dart';
import 'package:employee_attendance/page/home/home_tab/profile_tab.dart';
import 'package:employee_attendance/page/home/home_tab/team_member_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedColor = 0;
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedColor = index;
      selectedIndex = index;
      index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            bottomNavigationBar: menu(),
            body: TabBarView(
              children: [
                HomeTab(),
                LeavesTab(),
                HolidayTab(),
                ProfileTab(),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                // isExtended: true,
                backgroundColor: Color(0xff3085FE),
                onPressed: () {
                  Get.to(TeamMemberTab());
                },
                // isExtended: true,
                child: Image.asset(
                  "assets/images/multipal_profile.png",
                  color: Colors.white,
                  height: 20,
                )),
          ),
        ));
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
        onTap: onItemTapped,
        tabs: [
          Tab(
              icon: Image.asset(
            "assets/images/home_icon.png",
            height: 24,
            color: selectedColor == 0 ? Colors.blue : Colors.black,
          )),
          Tab(
              icon: Image.asset(
            "assets/images/calendar.png",
            height: 24,
            color: selectedColor == 1 ? Colors.blue : Colors.black,
          )),
          Tab(
              icon: Image.asset(
            "assets/images/holiday.png",
            height: 24,
            color: selectedColor == 2 ? Colors.blue : Colors.black,
          )),
          Tab(
              icon: Image.asset(
            "assets/images/profile_home.png",
            height: 24,
            color: selectedColor == 3 ? Colors.blue : Colors.black,
          )),
        ],
      ),
    );
  }
}
