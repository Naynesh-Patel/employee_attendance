import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/flutter_toast.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  ProfileController profileController = Get.find();

  @override
  void initState() {
    super.initState();
    profileController.changePasswordVisible = true;
    profileController.changePasswordVisible2 = true;
  }

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
          "Change Password",
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
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                PTextField(
                  controller: profileController.changePassword,
                  obscureText: profileController.changePasswordVisible,
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: !profileController.focusNode15.hasFocus
                          ? profileController.changePassword.text.isEmpty
                              ? Colors.black54
                              : Colors.blue
                          : Colors.blue),
                  border: Border.all(
                      color: !profileController.focusNode15.hasFocus
                          ? profileController.changePassword.text.isNotEmpty
                              ? Colors.blue
                              : Colors.black12
                          : Colors.blue),
                  focusNode: profileController.focusNode15,
                  suffixIcon: IconButton(
                    icon: Icon(profileController.changePasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(
                        () {
                          profileController.changePasswordVisible =
                              !profileController.changePasswordVisible;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                PTextField(
                  controller: profileController.changePassword2,
                  obscureText: profileController.changePasswordVisible2,
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                      color: !profileController.focusNode16.hasFocus
                          ? profileController.changePassword2.text.isEmpty
                              ? Colors.black54
                              : Colors.blue
                          : Colors.blue),
                  border: Border.all(
                      color: !profileController.focusNode16.hasFocus
                          ? profileController.changePassword2.text.isNotEmpty
                              ? Colors.blue
                              : Colors.black12
                          : Colors.blue),
                  focusNode: profileController.focusNode16,
                  suffixIcon: IconButton(
                    icon: Icon(profileController.changePasswordVisible2
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(
                        () {
                          profileController.changePasswordVisible2 =
                              !profileController.changePasswordVisible2;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: CustomButton(
          buttonText: 'Update',
          onTap: () {
            if (profileController.changePassword.text.isEmpty) {
              showToast(msg: "Enter your Password");
            } else if (profileController.changePassword2.text.isEmpty) {
              showToast(msg: "Enter your Confirm Password");
            } else {
              Get.back();
            }
          },
        ),
      ),
    );
  }
}
