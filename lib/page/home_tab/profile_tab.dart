import 'dart:io';

import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/listTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../profile_pages/edit_profile.dart';
import '../../profile_pages/my_profile.dart';
import '../../profile_pages/privacy_policy.dart';
import '../../profile_pages/setting_page.dart';
import '../../profile_pages/terms & conditions.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.04,
                ),
                profileController.image == null
                ? Stack(alignment: Alignment.bottomRight, children: [
                  SizedBox(
                    height: Get.height * 0.16,
                    width: Get.width * 0.35,
                    child: Image.asset(
                      "assets/images/user_profile.png",
                    ),
                  ),
                  FloatingActionButton.small(
                    backgroundColor: const Color(0xff3085FE),
                    shape: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () async {
                      profileController.image = await profileController.picker
                          .pickImage(source: ImageSource.gallery);
                      setState(() {});
                    },
                    child: Image.asset(
                      "assets/images/camera.png",
                      height: Get.height * 0.03,
                      color: Colors.white,
                    ),
                  ),
                ])
                : SizedBox(
                  height: Get.height * 0.16,
                  width: Get.width * 0.35,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.file(File(profileController.image!.path),fit: BoxFit.cover,)),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Text(
                  "Michael Mitc",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.height * 0.004,
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
                CustomButton(
                    buttonText: "Edit Profile",
                    onTap: () {
                      Get.to(const EditProfile());
                    }),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                listTile(
                  onTap: () {
                    Get.to(const MyProfilePage());
                  },
                  data: "My Profile",
                  image: "assets/images/profile_home.png",
                ),
                listTile(
                  onTap: () {
                    Get.to(Setting());
                  },
                  data: "Settings",
                  image: "assets/images/setting .png",
                ),
                listTile(
                  onTap: () {
                    Get.to(TermsConditionsPage());
                  },
                  data: "Terms & Conditions",
                  image: "assets/images/terms-and-conditions.png",
                ),
                listTile(
                  onTap: () {
                    Get.to(const PrivacyPolicyPage());
                  },
                  data: "Privacy Policy",
                  image: "assets/images/privacy_policy.png",
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfffff2f1),
                          ),
                          child: Image.asset("assets/images/logout.png",
                              height: Get.height * 0.025,
                              color: const Color(0xffFE6C42))),
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    const Text("Log Out",
                        style: TextStyle(
                            color: Color(0xffFE6C42),
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
