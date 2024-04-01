import 'package:employee_attendance/forgot_password/verification_email.dart';
import 'package:employee_attendance/forgot_password/verification_phone.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  int selectedOption = 0;

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
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  "Forgot password 🤔",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  "Select which contact details should we use to rest your password.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Center(child: Image.asset("assets/images/forgot_password.png")),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                ListTile(
                    shape: OutlineInputBorder(
                        borderSide:
                        BorderSide(
                          color: selectedOption!=1?Colors.black12:Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    leading: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: selectedOption!=1?Colors.grey.shade200:Colors.blue,
                          borderRadius: BorderRadius.circular(3)),
                      child: Image.asset("assets/images/email.png",height: 20,color: selectedOption!=1?Colors.black:Colors.white,),
                    ),
                    title: const Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text("parth@gmail.com"),
                    trailing: Transform.scale(
                      scale: 1.4,
                      child: Radio(
                        // activeColor: Colors.blue,
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.blue;
                          }
                          // inactive
                          return Colors.black12;
                        }),
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          selectedOption = value!;
                          setState(() {});
                        },
                      ),
                    )),
                SizedBox(height: Get.height*0.02,),
                ListTile(
                    shape: OutlineInputBorder(
                        borderSide:
                        BorderSide(
                          color: selectedOption!=2?Colors.black12:Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    leading: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: selectedOption!=2?Colors.grey.shade200:Colors.blue,
                          borderRadius: BorderRadius.circular(3)),
                      child: Image.asset("assets/images/telephone.png",height: 20,color: selectedOption!=2?Colors.black:Colors.white,),
                    ),
                    title: const Text(
                      "Phone Number",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text("0128212820"),
                    trailing: Transform.scale(
                      scale: 1.4,
                      child: Radio(
                        // activeColor: Colors.blue,
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.blue;
                          }
                          // inactive
                          return Colors.black12;
                        }),
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          selectedOption = value!;
                          setState(() {});
                        },
                      ),
                    )),
                SizedBox(height: Get.height*0.04,),
                CustomButton(buttonText: "Continue", onTap: () {
selectedOption!=1?Get.to(const VerificationPhone()):Get.to(const VerificationEmail());
                } )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
