import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {

    ProfileController profileController=Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Terms & Conditions",
          style: TextStyle(fontSize: 15,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w900),
        ),
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios_new,size: 20,)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Row(
                  children: [
                    Text("Last update: ",style: TextStyle(
                      color: Colors.grey
                    ),),
                    Text("12/8/2023",style: TextStyle(
                      color: Colors.grey
                    ),),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(profileController.text1,style: const TextStyle(
                  height: 1.3
                )),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Text("Conditions of Uses",style: TextStyle(
                  color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 18
                ),),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(profileController.text2,style: const TextStyle(
                  height: 1.4
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
