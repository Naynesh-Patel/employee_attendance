import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/page/forgot_password/verification_email.dart';
import 'package:employee_attendance/page/forgot_password/verification_phone.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  AuthController authController = Get.find();

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
                  "Forgot password 🤔",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Select which contact details should we use to rest your password.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/forgot_password.png",
                  height: Get.height * 0.30,
                )),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: authController.selectedOption != 1
                            ? Colors.black12
                            : Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: authController.selectedOption != 1
                                ? Colors.grey.shade200
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(
                          "assets/images/email.png",
                          height: 18,
                          color: authController.selectedOption != 1
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Text("parth@gmail.com"),
                        ],
                      ),
                      const Spacer(),
                      Transform.scale(
                        scale: 1.4,
                        child: Radio(
                          // activeColor: Colors.blue,
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.blue;
                            }
                            // inactive
                            return Colors.black12;
                          }),
                          value: 1,
                          groupValue: authController.selectedOption,
                          onChanged: (value) {
                            authController.selectedOption = value!;
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: authController.selectedOption != 2
                            ? Colors.black12
                            : Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: authController.selectedOption != 2
                                ? Colors.grey.shade200
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(
                          "assets/images/telephone.png",
                          height: 18,
                          color: authController.selectedOption != 2
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Text("0128212820"),
                        ],
                      ),
                      const Spacer(),
                      Transform.scale(
                        scale: 1.4,
                        child: Radio(
                          // activeColor: Colors.blue,
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.blue;
                            }
                            // inactive
                            return Colors.black12;
                          }),
                          value: 2,
                          groupValue: authController.selectedOption,
                          onChanged: (value) {
                            authController.selectedOption = value!;
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CustomButton(
                    buttonText: "Continue",
                    onTap: () {
                      authController.selectedOption != 1
                          ? Get.to(const VerificationPhone())
                          : Get.to(const VerificationEmail());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
