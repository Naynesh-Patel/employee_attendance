import 'package:employee_attendance/controller/binding_controller.dart';
import 'package:employee_attendance/controller/leaves_controller.dart';
import 'package:employee_attendance/page/home_tab/apply_leaves_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/leave_container.dart';

class LeavesTab extends StatefulWidget {
  const LeavesTab({super.key});

  @override
  State<LeavesTab> createState() => _LeavesTabState();
}

class _LeavesTabState extends State<LeavesTab> with TickerProviderStateMixin {
  LeavesController leavesController = Get.find();

  late TabController tabController;

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'All Leaves',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(const ApplyLeaves(), binding: BindingController());
            },
            child: Image.asset(
              'assets/images/add_icon.png',
              height: 23,
              width: 23,
            ),
          ),
          const SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: container(
                        text1: 'Leave',
                        text2: 'Balance',
                        text3: '20',
                        boxColor: const Color(0xffF5F9FF),
                        border: Border.all(color: const Color(0xff3085FE)),
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Color(0xff3085FE))),
                  ),
                  Expanded(
                      child: container(
                          text1: 'Leave',
                          text2: 'Approved',
                          text3: '2',
                          boxColor: const Color(0xffFAFDF5),
                          border: Border.all(color: const Color(0xffA3D139)),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: Color(0xffA3D139)))),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: container(
                        text1: 'Leave',
                        text2: 'Pending',
                        text3: '4',
                        boxColor: const Color(0xffF5FCFB),
                        border: Border.all(color: const Color(0xff30BEB6)),
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Color(0xff30BEB6))),
                  ),
                  Expanded(
                      child: container(
                          text1: 'Leave',
                          text2: 'Cancelled',
                          text3: '10',
                          boxColor: const Color(0xffFFF9F8),
                          border: Border.all(color: const Color(0xffFF7F74)),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: Color(0xffFF8E84)))),
                ],
              ),
              const SizedBox(height: 20),
              TabBar(
                onTap: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff3085FE),
                ),
                labelColor: const Color(0xffBED8FE),
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w600),
                controller: tabController,
                tabs: [
                  Tab(
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text('Upcoming',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400))),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        'Past',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )),
                    ),
                  ),
                ],
              ),
              currentIndex == 0
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 1),
                                    // color: Colors.black38,
                                    blurRadius: 15,
                                    color: Color(0xffF5F5F5))
                              ]),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Color(0xff4C4E51)),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Apr 15, 2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              ),
                                              Text(
                                                ' - ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                'Apr 18, 2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF5FCFB),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(
                                            color: Color(0xff61CDC7),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: 1.5,
                                  width: double.maxFinite,
                                  color: const Color(0xffF7F7F8),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Apply Days",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Leave Balance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "16",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Approved By",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "Martin Deo",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 1),
                                    // color: Colors.black38,
                                    blurRadius: 15,
                                    color: Color(0xffF5F5F5))
                              ]),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Date",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Color(0xff4C4E51)),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'Apr 15, 2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              ),
                                              const Text(
                                                ' - ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              ),
                                              const Expanded(
                                                  child: Text(
                                                'Apr 18, 2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13),
                                              )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFF9F8),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Rejected",
                                        style: TextStyle(
                                            color: Color(0xffFF9D95),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: 1.5,
                                  width: double.maxFinite,
                                  color: const Color(0xffF7F7F8),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Apply Days",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Leave Balance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "16",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Approved By",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: Color(0xff4C4E51)),
                                        ),
                                        Text(
                                          "Martin Deo",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
