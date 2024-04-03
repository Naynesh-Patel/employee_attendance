import 'package:employee_attendance/page/home_tab/users_attendance.dart';
import 'package:employee_attendance/profile_pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_date_picker_flutter/horizontal_date_picker_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool isButtonSwiped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/ic_profile_home.png",
              height: 56,
              width: 56,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Michael Mitc",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
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
            InkWell(
              borderRadius: BorderRadius.circular(15.5),
              onTap: () {
                Get.to(const NotificationPage());
              },
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF6F7F7),
                      width: 2.5,
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 10,
                        child:
                            Image.asset('assets/images/notification_icon.png'),
                      ))),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HorizontalDatePicker(
                      borderRadius: BorderRadius.circular(12),
                      unSelectedItemColor: Colors.white,
                      monthTextStyle: const TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      weekDayTextStyle: const TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      selectedItemColor: const Color(0xff4390FD),
                      onDateTap: (p0) {},
                      startDate: DateTime.now(),
                      endDate: DateTime.now().add(const Duration(days: 40)),
                      dayTextStyle: const TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
                          color: const Color(0xffF8F8F8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Today Attendance",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff2F3135),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // height: 133,
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffEAF3FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Image.asset(
                                                'assets/images/check-in_icon.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "Check In",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff2E3034)),
                                            )
                                          ],
                                        ),
                                        // SizedBox(height: 12),
                                        const Text(
                                          '10:20 am',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xff2B2E31)),
                                        ),
                                        // SizedBox(height: 6),
                                        const Text(
                                          'On Time',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff46494C)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // height: 133,
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffEAF3FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Image.asset(
                                                'assets/images/check_out_icon.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "Check Out",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff2E3034)),
                                            )
                                          ],
                                        ),
                                        // SizedBox(height: 12),
                                        const Text(
                                          '07:00 pm',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xff2B2E31)),
                                        ),
                                        // SizedBox(height: 6),
                                        const Text(
                                          'Go Home',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff46494C)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // height: 133,
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(9),
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffEAF3FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Image.asset(
                                                'assets/images/break-time_icon.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Text(
                                              "Break Time",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff2E3034)),
                                            )
                                          ],
                                        ),
                                        // SizedBox(height: 12),
                                        const Text(
                                          '00:30 min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xff2B2E31)),
                                        ),
                                        const Text(
                                          'Avg Time 30 min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff46494C)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(UserAttendance());
                                  },
                                  child: Container(
                                    // height: 133,
                                    width: double.maxFinite,
                                    margin: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffEAF3FF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Image.asset(
                                                  'assets/images/calendar_icon_colour.png',
                                                  height: 15,
                                                  width: 15,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text(
                                                "Total Days",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff2E3034)),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            '28',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Color(0xff2B2E31)),
                                          ),
                                          const Text(
                                            'Working Days',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff46494C)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Your Activity",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "View All",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xff69A4F7)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffEAF3FF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'assets/images/check-in_icon.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Check In",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
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
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffEAF3FF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'assets/images/break-time_icon.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Break In",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
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
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: SwipeButton.expand(
          //       // trackPadding: EdgeInsets.symmetric(horizontal: 10),
          //       // thumbPadding: EdgeInsets.symmetric(horizontal: 10),
          //       thumb: const Icon(
          //         Icons.arrow_forward_outlined,
          //         color: Color(0xff64A3FE),
          //       ),
          //       activeThumbColor: Colors.white,
          //       activeTrackColor: const Color(0xff428EFB),
          //       onSwipe: () {
          //         ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(
          //             content: Text("Checked In "),
          //             backgroundColor: Colors.green,
          //           ),
          //         );
          //       },
          //       child: const Text(
          //         "Swipe to Check In",
          //         style: TextStyle(
          //           color: Color(0xffF3F8FF),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
