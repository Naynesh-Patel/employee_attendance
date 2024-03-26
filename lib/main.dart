import 'package:employee_attendance/page/home_tab/splash.dart';
import 'package:flutter/cupertino.dart';
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
      initialBinding: BindingController(),
      home: const Splash(),
    );
  }
}

