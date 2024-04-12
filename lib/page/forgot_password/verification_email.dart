import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'new_password.dart';

class VerificationEmail extends StatefulWidget {
  const VerificationEmail({super.key});

  @override
  State<VerificationEmail> createState() => _VerificationEmailState();
}

class _VerificationEmailState extends State<VerificationEmail> {
  AuthController authController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController.startTimer();
  }

  @override
  void dispose() {
    authController.timer.cancel();
    super.dispose();
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
      body: ListView(
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
                  "Enter Verification Code",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "We have sent the code verification to your email.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/verification_code.png",
                  height: Get.height * 0.37,
                )),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                PinPut(
                    fieldsCount: 4,
                    eachFieldHeight: Get.height * 0.07,
                    eachFieldWidth: Get.height * 0.07,
                    eachFieldMargin: const EdgeInsets.symmetric(horizontal: 10),
                    controller: authController.pinPutController,
                    submittedFieldDecoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    selectedFieldDecoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    followingFieldDecoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => authController.start.value != 0
                          ? Text("${authController.start.value}")
                          : const SizedBox.shrink(),
                    ),
                    TextButton(
                      onPressed: () {
                        if (authController.start.value == 0) {
                          authController.start.value = 30;
                          authController.startTimer();
                        }
                      },
                      child: Text(
                        "Resend it",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomButton(
                    buttonText: "Verify",
                    onTap: () {
                      Get.to(const NewPassword());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
