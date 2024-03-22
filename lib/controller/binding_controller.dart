import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/controller/holiday_controller.dart';
import 'package:employee_attendance/controller/home_controller.dart';
import 'package:employee_attendance/controller/leaves_controller.dart';
import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:get/get.dart';

class BindingController with Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<LevesController>(() => LevesController(), fenix: true);
    Get.lazyPut<HolidayController>(() => HolidayController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}
