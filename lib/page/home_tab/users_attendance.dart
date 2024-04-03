import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAttendance extends StatefulWidget {
  const UserAttendance({super.key});

  @override
  State<UserAttendance> createState() => _UserAttendanceState();
}

class _UserAttendanceState extends State<UserAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.black, size: 20)),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Jack Patel',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17,color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 2), color: Color(0xffFFFFFF))
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 20,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                              // color: Color(0xffE7E7E8),
                              color: Colors.blue),
                        ),
                        const SizedBox(width: 10),
                         Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Date and Year',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding:  const EdgeInsets.all(8),
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
                                  const Expanded(
                                    child: Text(
                                      "10:12 am",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2E3034)),
                                    ),
                                  ),
                                  Container(
                                    padding:  const EdgeInsets.all(8),
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
                                  const Expanded(
                                    child: Text(
                                      "07:00 pm",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff2E3034)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
