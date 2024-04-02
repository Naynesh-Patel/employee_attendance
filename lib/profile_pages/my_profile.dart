import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/listTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage>
    with TickerProviderStateMixin {
  ProfileController profileController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileController.tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 0.5,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff3085FE),
                ),
                labelColor: Colors.white,
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w600),
                controller: profileController.tabController,
                tabs: [
                  Tab(
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text('Personal',
                              style: TextStyle(fontWeight: FontWeight.w400))),
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
                          child: Text('Professional',
                              style: TextStyle(fontWeight: FontWeight.w400))),
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
                        'Documents',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Expanded(
              child: TabBarView(
                  controller: profileController.tabController,
                  children: [
                    Column(
                      children: [
                        textsTile(text1: "Full Name", text2: "Michael Mitc"),
                        textsTile(
                            text1: "Email Address", text2: "p12@gmail.com"),
                        textsTile(text1: "Phone Number", text2: "0123456789"),
                        textsTile(text1: "Address", text2: "33,surat"),
                      ],
                    ),
                    ListView(
                      children: [
                        Column(
                          children: [
                            textsTile(text1: "Employee ID", text2: "1282"),
                            textsTile(
                                text1: "Designation",
                                text2: "Lead UI/UX Designer"),
                            textsTile(
                                text1: "Company Email Address",
                                text2: "p12@gmail.com"),
                            textsTile(
                                text1: "Employee Type", text2: "Permanent"),
                            textsTile(text1: "Department", text2: "Design"),
                            textsTile(
                                text1: "Reporting Manager", text2: "Parth"),
                            textsTile(
                                text1: "Company Experience", text2: "2 Year"),
                            textsTile(text1: "Office Time", text2: ""),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        listTile2(
                          data: "Offer Letter",
                          onTap: () {},
                        ),
                        listTile2(
                          data: "Appointment Letter",
                          onTap: () {},
                        ),
                        listTile2(
                          data: "Bond Agreement",
                          onTap: () {},
                        ),
                        listTile2(
                          data: "Appraisal Letter",
                          onTap: () {},
                        ),
                        listTile2(
                          data: "Salary Slip",
                          onTap: () {},
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
