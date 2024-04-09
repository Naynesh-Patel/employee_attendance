import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/flutter_toast.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {

  ProfileController profileController =Get.find();

  @override
  void initState() {
    super.initState();
    profileController.enterPasswordVisible = true;
    profileController.reEnterPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        body: KeyboardVisibilityBuilder(
          builder: (p0, isKeyboardVisible) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      const Text(
                        "Enter New Password",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "Please enter your new password.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Center(
                          child: Image.asset("assets/images/new_password.png",
                              height: Get.height * 0.33)),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      PTextField(
                        controller: profileController.newPassword,
                        obscureText: profileController.enterPasswordVisible,
                        hintText: "Enter New Password",
                        labelText: "Enter New Password",
                        labelStyle: TextStyle(
                            color: !profileController.focusNode1.hasFocus
                                ? profileController.newPassword.text.isEmpty
                                ? Colors.black54
                                : Colors.blue:Colors.blue
                        ),
                        border: Border.all(
                            color: !profileController.focusNode1.hasFocus
                                ? profileController.newPassword.text.isNotEmpty
                                ? Colors.blue
                                : Colors.black12
                                : Colors.blue),
                        focusNode: profileController.focusNode1,
                        suffixIcon: IconButton(
                          icon: Icon(profileController.enterPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                                  () {
                                    profileController.enterPasswordVisible =
                                !profileController.enterPasswordVisible;
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      PTextField(
                        controller: profileController.reEnterPassword,
                        obscureText: profileController.reEnterPasswordVisible,
                        hintText: "Re-Enter Password",
                        labelText: "Re-Enter Password",
                        labelStyle: TextStyle(
                            color: !profileController.focusNode2.hasFocus
                                ? profileController.reEnterPassword.text.isEmpty
                                ? Colors.black54
                                : Colors.blue:Colors.blue
                        ),
                        border: Border.all(
                            color: !profileController.focusNode2.hasFocus
                                ? profileController.reEnterPassword.text.isNotEmpty
                                ? Colors.blue
                                : Colors.black12
                                : Colors.blue),
                        focusNode: profileController.focusNode2,
                        suffixIcon: IconButton(
                          icon: Icon(profileController.reEnterPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                                  () {
                                    profileController.reEnterPasswordVisible =
                                !profileController.reEnterPasswordVisible;
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      CustomButton(
                          buttonText: "Update Password",
                          onTap: () {
                            if (profileController.newPassword.text.isEmpty) {
                              showToast(msg: "Enter Password");
                            } else if (profileController.newPassword.text.length <
                                8) {
                              showToast(
                                  msg: "Password required at least 8 characters");
                            } else if (profileController.reEnterPassword.text
                                .isEmpty) {
                              showToast(msg: "Re-Enter Password");
                            } else if (profileController.reEnterPassword.text !=
                                profileController.newPassword.text) {
                              showToast(msg: "Password not matched");
                            } else {
                              return null;
                            }
                          })
                    ],
                  ),
                ),
              ],
            );
          },
        )
    );
  }
}
