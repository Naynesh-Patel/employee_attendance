

import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/listTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../profile_pages/my_profile.dart';
import '../../profile_pages/privacy_policy.dart';
import '../../profile_pages/terms & conditions.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  ProfileController profileController=Get.find();
  // final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Stack(alignment: Alignment.bottomRight, children: [
                Image.asset("assets/images/user_profile.png",height: 120),
                  FloatingActionButton.small(
                    shape: const CircleBorder(),
                    onPressed: () async {
                      // final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                    },
                    child: Image.asset("assets/images/camera.png"),
                  ),
                ]),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Text(
                  "Parth Patel",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  "Lead UI/UX Designer",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomButton(buttonText: "Edit Profile", onTap: () {}),
                // SizedBox(
                //   width: double.maxFinite,
                //   height: Get.height * 0.07,
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     child: const Text("Edit Profile"),
                //     style: ButtonStyle(
                //         backgroundColor:
                //             MaterialStatePropertyAll(Color(0xff3085fe)),
                //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //             RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(12),
                //         ))),
                //   ),
                // ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                listTile(
                    onTap: () {
Get.to(const MyProfilePage());
                    },
                    data: "My Profile",
                    image: "assets/images/profile_home.png",
                    icon: Icons.arrow_forward_ios_outlined),
                listTile(
                    onTap: () {},
                    data: "Settings",
                    image: "assets/images/setting.png",
                    icon: Icons.arrow_forward_ios_outlined),
                listTile(
                    onTap: () {
                      Get.to(const TermsConditionsPage());
                    },
                    data: "Terms & Conditions",
                    image: "assets/images/terms-and-conditions.png",
                    icon: Icons.arrow_forward_ios_outlined),
                listTile(
                    onTap: () {
                      Get.to(const PrivacyPolicyPage());
                    },
                    data: "Privacy Policy",
                    image: "assets/images/privacy_policy.png",
                    icon: Icons.arrow_forward_ios_outlined),
                ListTile(
                  onTap: () {},
                  leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfffff2f1),
                      ),
                      child: Image.asset("assets/images/logout.png",height: 20,color: const Color(0xffFE6C42))),
                  title: const Text("Log Out",style: TextStyle(color: Color(0xffFE6C42),fontWeight: FontWeight.w500))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
