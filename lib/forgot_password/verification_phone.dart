import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../widget/custom_button.dart';
import 'new_password.dart';

class VerificationPhone extends StatefulWidget {
  const VerificationPhone({super.key});

  @override
  State<VerificationPhone> createState() => _VerificationPhoneState();
}

class _VerificationPhoneState extends State<VerificationPhone> {

  AuthController authController=Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      authController.startTimer();
    });
  }

  @override
  void dispose() {
    authController.timer.cancel();
    super.dispose();
    setState(() {

    });
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
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,size: 20,),
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
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "we have sent the code verification to your mobile number.",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Center(child: Image.asset("assets/images/verification_code.png",height: Get.height * 0.35)),
                    SizedBox(height: Get.height*0.04,),
                PinPut(
                  fieldsCount: 4,
                    eachFieldHeight: Get.height*0.08,
                    eachFieldWidth: Get.height*0.08,
                eachFieldMargin: const EdgeInsets.symmetric(horizontal: 10),
                  controller: authController.pinPutController,
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
                    Row(
                      children: [
                       Obx(() =>  authController.start.value!=0?
                       Text("${authController.start.value}"
                       ):const SizedBox.shrink(),),
                        TextButton(
                          onPressed: () {
                              if(authController.start.value==0){
                                authController.start.value = 30;
                                authController.startTimer();}
                          },
                          child:  const Text("Resend it",style: TextStyle(
                              color: Colors.blue
                          ),),
                        ),
                      ],
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
