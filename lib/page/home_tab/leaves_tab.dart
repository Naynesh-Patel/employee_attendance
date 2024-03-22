import 'package:employee_attendance/controller/leaves_controller.dart';
import 'package:employee_attendance/page/home_tab/apply_leaves_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LeavesTab extends StatefulWidget {
  const LeavesTab({super.key});

  @override
  State<LeavesTab> createState() => _LeavesTabState();
}

class _LeavesTabState extends State<LeavesTab> with TickerProviderStateMixin {
  LeavesController leavesController = Get.find();

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Leaves',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 22
        ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(ApplyLeaves());
            },
            child: Image.asset(
              'assets/images/add_icon.png',
              height: 20,
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/filter_icon.png',
              height: 25,
            ),
          ),
          const SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: leavesController.container(
                      text1: 'Leave',
                      text2: 'Balance',
                      text3: '20',
                      boxColor: const Color(0xffF5F9FF),
                  border: Border.all(
                    color: const Color(0xff3085FE)),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff3085FE)
                    )
                  ),
                ),
                Expanded(
                    child: leavesController.container(
                  text1: 'Leave',
                  text2: 'Approved',
                  text3: '2',
                      boxColor: const Color(0xffFAFDF5),
                      border: Border.all(
                        color: Color(0xffA3D139)
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xffA3D139)
                      )
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: leavesController.container(
                      text1: 'Leave',
                      text2: 'Pending',
                      text3: '4',
                      boxColor: const Color(0xffF5FCFB),
                  border: Border.all(
                    color: const Color(0xff30BEB6)),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff30BEB6)
                    )
                  ),
                ),
                Expanded(
                    child: leavesController.container(
                  text1: 'Leave',
                  text2: 'Cancelled',
                  text3: '10',
                      boxColor: const Color(0xffFFF9F8),
                      border: Border.all(
                        color: Color(0xffFF7F74)
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xffFF8E84)
                      )
                )),
              ],
            ),
            TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff3085FE),
              ),
              labelColor: Colors.white,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600
              ),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600
              ),
              controller: tabController,
              tabs: [
                Tab(
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Center(child: Text('Upcoming')),
                ),
                ),
                Tab(
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(child: Text('Past')),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder:(context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(offset: Offset(0, 1),
                        // color: Colors.black38,
                          blurRadius: 15,
                          color: Color(0xffF5F5F5)
                        )
                      ]
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Date",
                            style: TextStyle(
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Row(
                            children: [
                              const Text('Apr 15, 2023',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                              const Text('-',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                              const Expanded(child: Text('Apr 18, 2023',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              )),
                              Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF5FCFB),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Text("Approved",
                                    style: TextStyle(
                                        color: Color(0xff61CDC7)
                                    ),
                                  ))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 3,
                            width: double.maxFinite,
                            color: const Color(0xffF7F7F8),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Apply Days",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text("Leave Balance",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text("Approved By",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("3 Days",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              ),

                              Text("16",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                              Text("Martin Deo",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  );
                }, ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder:(context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(offset: Offset(0, 1),
                                    // color: Colors.black38,
                                    blurRadius: 15,
                                    color: Color(0xffF5F5F5)
                                )
                              ]
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text('Apr 15, 2023',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                    const Text('-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                    const Expanded(child: Text('Apr 18, 2023',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    )),
                                    Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF5FCFB),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: const Text("Approved",
                                          style: TextStyle(
                                              color: Color(0xff61CDC7)
                                          ),
                                        ))
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 3,
                                  width: double.maxFinite,
                                  color: const Color(0xffF7F7F8),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Apply Days",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text("Leave Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text("Approved By",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("3 Days",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),

                                    Text("16",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                    Text("Martin Deo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        );
                      }, ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
