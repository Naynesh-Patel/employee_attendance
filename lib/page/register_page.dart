import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/widget/flutter_toast.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthController authController = Get.find();

  @override
  void initState() {
    super.initState();
    authController.registerPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardVisibilityBuilder(
        builder: (p0, isKeyboardVisible) {
          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 80,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Register Account\n',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'HR Attendance!',
                            style: TextStyle(
                                color: Color(0xff3E8DFE),
                                fontWeight: FontWeight.bold,
                                fontSize: 27),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      " Hello there, register to continue",
                      style: TextStyle(
                        color: Color(0xffC8CACE),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PTextField(
                      controller: authController.firstName,
                      labelText: "First Name",
                      labelStyle: TextStyle(
                          color: !authController.focusNode5.hasFocus
                              ? authController.firstName.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "First Name",
                      focusNode: authController.focusNode5,
                      border: Border.all(
                          color: !authController.focusNode5.hasFocus
                              ? authController.firstName.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: authController.lastName,
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                          color: !authController.focusNode6.hasFocus
                              ? authController.lastName.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "Last Name",
                      focusNode: authController.focusNode6,
                      border: Border.all(
                          color: !authController.focusNode6.hasFocus
                              ? authController.lastName.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: authController.registerEmail,
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                          color: !authController.focusNode7.hasFocus
                              ? authController.registerEmail.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "Email Address",
                      focusNode: authController.focusNode7,
                      border: Border.all(
                          color: !authController.focusNode7.hasFocus
                              ? authController.registerEmail.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: authController.registerPassword,
                      obscureText: authController.registerPasswordVisible,
                      hintText: "Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: !authController.focusNode8.hasFocus
                              ? authController.registerPassword.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      border: Border.all(
                          color: !authController.focusNode8.hasFocus
                              ? authController.registerPassword.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                      focusNode: authController.focusNode8,
                      suffixIcon: IconButton(
                        icon: Icon(authController.registerPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              authController.registerPasswordVisible =
                                  !authController.registerPasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: authController.confirmPassword,
                      obscureText: authController.confirmPasswordVisible,
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          color: !authController.focusNode9.hasFocus
                              ? authController.confirmPassword.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      border: Border.all(
                          color: !authController.focusNode9.hasFocus
                              ? authController.confirmPassword.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                      focusNode: authController.focusNode9,
                      suffixIcon: IconButton(
                        icon: Icon(authController.confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              authController.confirmPasswordVisible =
                                  !authController.confirmPasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    // SizedBox(height: Get.height*0.02),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: const BorderSide(color: Colors.grey),
                          value: authController.isBlank,
                          onChanged: (value) {
                            setState(() {
                              authController.isBlank = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        if (authController.firstName.text.isEmpty) {
                          showToast(msg: "Enter your Name");
                        } else if (authController.lastName.text.isEmpty) {
                          showToast(msg: "Enter your Surname");
                        } else if (authController.registerEmail.text.isEmpty) {
                          showToast(msg: "Enter Email");
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(authController.registerEmail.text)) {
                          showToast(msg: "Enter valid Email");
                        } else if (authController
                            .registerPassword.text.isEmpty) {
                          showToast(msg: "Create Password");
                        } else if (authController.registerPassword.text.length <
                            8) {
                          showToast(
                              msg: "Password required at least 8 characters");
                        } else if (authController
                            .confirmPassword.text.isEmpty) {
                          showToast(msg: "Re-Enter Password");
                        } else if (authController.confirmPassword.text !=
                            authController.registerPassword.text) {
                          showToast(msg: "Password not matched");
                        }else if(!authController.isBlank){
                          showToast(msg: "Apply the conditions");
                        }else {
                          // Get.offAll(Ho)
                          setState(() {

                          });
                        }
                      },
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 50),
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color:!authController.isBlank
                                ? const Color(0xffEEEFF0)
                                : const Color(0xff3085FE)),
                        child: const Center(
                            child: Text(
                          "Register",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "Or continue with social account",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffC6C8CC),
                            fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                                color: const Color(0xffEEEFF0), width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              height: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Google",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff484A4D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(const Login());
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff4B4D50),
                              fontWeight: FontWeight.w500,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Login',
                                  style: TextStyle(
                                      color: Color(0xff73ACFE),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }

// Future<void> showDialogHome() async {
//   return showDialog<void>(
//     context: context,
//     barrierDismissible: false, // user must tap button!
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: const Color(0xffffffff),
//         content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   "assets/images/login.png",
//                   width: 150,
//                   height: 150,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Congratulations",
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Color(0xff4490FE),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       Image.asset(
//                         "assets/images/congratulations.png",
//                         height: 25,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Text(
//                   "Your account is ready to use",
//                   style: TextStyle(
//                       fontSize: 13,
//                       color: Color(0xff616366),
//                       fontWeight: FontWeight.w400),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 CustomButton(
//                   buttonText: 'Back to Home',
//                   onTap: () {
//                     Get.to(const Home());
//                     // Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             )),
//       );
//     },
//   );
// }
}
