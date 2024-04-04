import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamMember extends StatefulWidget {
  const TeamMember({super.key});

  @override
  State<TeamMember> createState() => _TeamMemberState();
}

class _TeamMemberState extends State<TeamMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Team Members",
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 0.5,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
        actions: [
          Image.asset(
            "assets/images/menu.png",
            width: Get.width * 0.06,
          ),
          SizedBox(
            width: Get.width * 0.05,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    blurStyle: BlurStyle.outer,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('assets/images/search.png',
                          height: 10, width: 10),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Color(0xffB6B9BE),
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/user_profile.png",
                            height: Get.height * 0.05,
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane Hawkins",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                Text(
                                  "janehawkins@demo.com",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    ),
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: Get.height * 0.16,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Container(
                                                width: Get.width * 0.15,
                                                height: 2,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: Get.height*0.02,),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/call.png",
                                                  height: Get.height * 0.03,
                                                ),
                                                SizedBox(width: Get.width*0.03,),
                                                const Text("Call",style: TextStyle(
                                                  fontSize: 16
                                                ),)
                                              ],
                                            ),
                                            SizedBox(height: Get.height*0.02,),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/delete.png",
                                                  height: Get.height * 0.03,color: const Color(0xffFF8F85),
                                                ),
                                                SizedBox(width: Get.width*0.03,),
                                                const Text("Delete",style: TextStyle(
                                                    fontSize: 16,color: Color(0xffFF8F85)
                                                ),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Image.asset(
                                "assets/images/menu.png",
                                width: Get.width * 0.06,
                              )),
                        ],
                      ),
                      Divider(
                          height: Get.height * 0.04,
                          color: Colors.grey.shade200),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {},
          child: Container(
            constraints: const BoxConstraints(maxHeight: 50),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff3085FE)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Color(0xffD7E7FE),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Add Member",
                  style: TextStyle(color: Color(0xffD7E7FE), fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
