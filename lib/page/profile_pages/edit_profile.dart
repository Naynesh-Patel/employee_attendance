import 'dart:io';

import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "Edit Profile",
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
        body: KeyboardVisibilityBuilder(
          builder: (p0, isKeyboardVisible) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Stack(alignment: Alignment.bottomRight, children: [
                        SizedBox(
                          height: Get.height * 0.16,
                          width: Get.width * 0.35,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: profileController.image == null
                                ? Image.asset(
                                    "assets/images/user_profile.png",
                                  )
                                : Image.file(
                                    File(profileController.image!.path),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: const Color(0xff3085FE),
                          shape: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () async {
                            profileController.image = await profileController
                                .picker
                                .pickImage(source: ImageSource.gallery);
                            setState(() {});
                          },
                          child: Image.asset(
                            "assets/images/camera.png",
                            height: Get.height * 0.03,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                      SizedBox(height: Get.height * 0.05),
                      Row(
                        children: [
                          Expanded(
                            child: PTextField(
                              controller: profileController.eFirstName,
                              labelText: "First Name",
                              labelStyle: TextStyle(
                                  color: !profileController.focusNode10.hasFocus
                                      ? profileController
                                              .eFirstName.text.isEmpty
                                          ? Colors.black54
                                          : Colors.blue
                                      : Colors.blue),
                              hintText: "First Name",
                              focusNode: profileController.focusNode10,
                              border: Border.all(
                                  color: !profileController.focusNode10.hasFocus
                                      ? profileController
                                              .eFirstName.text.isNotEmpty
                                          ? Colors.blue
                                          : Colors.black12
                                      : Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Expanded(
                            child: PTextField(
                              controller: profileController.eLastName,
                              labelText: "Last Name",
                              labelStyle: TextStyle(
                                  color: !profileController.focusNode11.hasFocus
                                      ? profileController.eLastName.text.isEmpty
                                          ? Colors.black54
                                          : Colors.blue
                                      : Colors.blue),
                              hintText: "Last Name",
                              focusNode: profileController.focusNode11,
                              border: Border.all(
                                  color: !profileController.focusNode11.hasFocus
                                      ? profileController
                                              .eLastName.text.isNotEmpty
                                          ? Colors.blue
                                          : Colors.black12
                                      : Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      PTextField(
                        controller: profileController.eEmail,
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                            color: !profileController.focusNode12.hasFocus
                                ? profileController.eEmail.text.isEmpty
                                    ? Colors.black54
                                    : Colors.blue
                                : Colors.blue),
                        hintText: "Email Address",
                        focusNode: profileController.focusNode12,
                        border: Border.all(
                            color: !profileController.focusNode12.hasFocus
                                ? profileController.eEmail.text.isNotEmpty
                                    ? Colors.blue
                                    : Colors.black12
                                : Colors.blue),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      PTextField(
                        controller: profileController.phoneNumber,
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                            color: !profileController.focusNode13.hasFocus
                                ? profileController.phoneNumber.text.isEmpty
                                    ? Colors.black54
                                    : Colors.blue
                                : Colors.blue),
                        hintText: "Phone Number",
                        focusNode: profileController.focusNode13,
                        border: Border.all(
                            color: !profileController.focusNode13.hasFocus
                                ? profileController.phoneNumber.text.isNotEmpty
                                    ? Colors.blue
                                    : Colors.black12
                                : Colors.blue),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      PTextField(
                        controller: profileController.address,
                        labelText: "Address",
                        labelStyle: TextStyle(
                            color: !profileController.focusNode14.hasFocus
                                ? profileController.address.text.isEmpty
                                    ? Colors.black54
                                    : Colors.blue
                                : Colors.blue),
                        hintText: "Address",
                        focusNode: profileController.focusNode14,
                        border: Border.all(
                            color: !profileController.focusNode14.hasFocus
                                ? profileController.address.text.isNotEmpty
                                    ? Colors.blue
                                    : Colors.black12
                                : Colors.blue),
                      ),
                      SizedBox(height: Get.height * 0.04),
                      CustomButton(buttonText: "Save", onTap: () {})
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
