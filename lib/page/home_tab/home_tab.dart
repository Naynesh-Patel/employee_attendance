import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_date_picker_flutter/horizontal_date_picker_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/profile_home.png",
                height: 56,
                width: 56,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Michael Mitc",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff313437),
                        fontSize: 19),
                  ),
                  Text(
                    "Lead UI/UX Designer",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff313437),
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 30,
                  )),
            ],
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorizontalDatePicker(
                    borderRadius: BorderRadius.circular(12),
                    unSelectedItemColor: Colors.white,
                    monthTextStyle: const TextStyle(color: Color(0xff000000)),
                    weekDayTextStyle: const TextStyle(color: Color(0xff000000)),
                    selectedItemColor: const Color(0xff4390FD),
                    onDateTap: (p0) {},
                    startDate: DateTime.now(),
                    endDate: DateTime.now().add(const Duration(days: 40)),
                    dayTextStyle:
                        const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // color: Colors.grey.withOpacity(0.1)
                        color: const Color(0xffFAFAFA)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Today Attendance",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff2F3135),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_cheak.png",
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Check In",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff626467)),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    "10:20am",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xff2B2E31)),
                                  ),
                                  const Text(
                                    "On Time",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xff46494C)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/cheakout.png",
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Check Out",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff626467)),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    "07:00 pm",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xff2B2E31)),
                                  ),
                                  const Text(
                                    "Go Home",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xff46494C)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_break.png",
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Break Time",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff626467)),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    "00:30min",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xff2B2E31)),
                                  ),
                                  const Text(
                                    "Avg Time 30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xff46494C)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_day.png",
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Total Days",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff626467)),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    "28",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xff2B2E31)),
                                  ),
                                  const Text(
                                    "Working Days",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xff46494C)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "YourActivity",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "ViewAll",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff69A4F7)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/ic_cheak.png",
                                height: 35,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CheckIn",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "April 17, 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffC7C9CD)),
                                  ),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "10:00am",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "On Time",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffC7C9CD)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/ic_cheak.png",
                                height: 35,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BreakIn",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "April 17, 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffC7C9CD)),
                                  ),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "12:30am",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "On Time",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffC7C9CD)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
