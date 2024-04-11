import 'package:employee_attendance/page/home/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/binding_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Spectral-Regular",
        primaryColor: Colors.black,
        useMaterial3: false,
      ),
      initialBinding: BindingController(),
      home: Splash(),
    );
  }
}
