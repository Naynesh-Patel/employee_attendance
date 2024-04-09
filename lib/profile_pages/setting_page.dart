import 'package:employee_attendance/widget/listTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'change_password.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Setting",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            textsTile2(text: "Change Password",
            onTap: () {
              Get.to(ChangePassword());
            },),
          ],
        ),
      ),
    );
  }
}
