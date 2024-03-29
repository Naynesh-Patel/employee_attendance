import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {

  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
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
                  "Enter New Password",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  "Please enter your new password.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Center(child: Image.asset("assets/images/forgot_password.png")),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  child: TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter New Password",
                      hintStyle: const TextStyle(
                        color: Colors.black26
                      ),
                      labelText: "Enter New Password",
                      labelStyle: const TextStyle(
                        color: Colors.black
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      alignLabelWithHint: false
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: Get.height*0.02,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Re-Enter Password",
                      hintStyle: const TextStyle(
                          color: Colors.black26
                      ),
                      labelText: "Re-Enter Password",
                      labelStyle: const TextStyle(
                          color: Colors.black
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      alignLabelWithHint: false
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: Get.height*0.04,),
                CustomButton(buttonText: "Update Password", onTap: () {
                } )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
