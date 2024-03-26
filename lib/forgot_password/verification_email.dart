import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../widget/custom_button.dart';
import 'new_password.dart';

class VerificationEmail extends StatefulWidget {
  const VerificationEmail({super.key});

  @override
  State<VerificationEmail> createState() => _VerificationEmailState();
}

class _VerificationEmailState extends State<VerificationEmail> {

  final _pinPutController = TextEditingController();

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
                  "Enter Verification Code",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  "we have sent the code verification to your email.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Center(child: Image.asset("assets/images/forgot_password.png")),
                SizedBox(height: Get.height*0.04,),
                PinPut(
                    fieldsCount: 4,
                    eachFieldHeight: 70.0,
                    eachFieldWidth: 65,
                    eachFieldMargin: const EdgeInsets.symmetric(horizontal: 10),
                    controller: _pinPutController,
                    submittedFieldDecoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    selectedFieldDecoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    followingFieldDecoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child:  Text("Resend it",style: TextStyle(
                          color: Colors.blue
                      ),),
                    )
                  ],
                ),
                SizedBox(height: Get.height*0.02,),
                CustomButton(buttonText: "Verify", onTap: () {
                  Get.to(const NewPassword());
                } )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
