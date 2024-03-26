import 'dart:async';

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

  final _pinPutController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
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
                      "we have sent the code verification to your mobile number.",
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
                    _start<=0?
                    TextButton(
                      onPressed: () {},
                      child:  Text("Resend it",style: TextStyle(
                          color: Colors.blue
                      ),),
                    ):Text("${_start.toString()}")
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

  int _start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start <= 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }
}
