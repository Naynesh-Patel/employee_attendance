import 'package:employee_attendance/page/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      "assets/images/splash.png",
      // height: Get.height,
      width: Get.width,
      fit: BoxFit.cover,
    ));
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const Login());
    });
  }
}
