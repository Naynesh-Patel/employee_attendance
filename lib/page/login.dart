import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/forgot_password/forgot_password_page.dart';
import 'package:employee_attendance/page/home.dart';
import 'package:employee_attendance/page/register_page.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/flutter_toast.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthController authController = Get.find();

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
                        text: 'Welcome Back \nTo ',
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
                      " Hello there, login to continue",
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
                      controller: authController.loginEmail,
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                          color: !authController.focusNode3.hasFocus
                              ? authController.loginEmail.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "Email Address",
                      focusNode: authController.focusNode3,
                      border: Border.all(
                          color: !authController.focusNode3.hasFocus
                              ? authController.loginEmail.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: authController.loginPassword,
                      obscureText: authController.loginPasswordVisible,
                      hintText: "Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: !authController.focusNode4.hasFocus
                              ? authController.loginPassword.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      border: Border.all(
                          color: !authController.focusNode4.hasFocus
                              ? authController.loginPassword.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                      focusNode: authController.focusNode4,
                      suffixIcon: IconButton(
                        icon: Icon(authController.loginPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              authController.loginPasswordVisible =
                                  !authController.loginPasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.to(const ForgotPassword());
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6EA9FE),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      buttonText: 'Login',
                      onTap: () {
                        if (authController.loginEmail.text.isEmpty) {
                          showToast(msg: "Enter Email");
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(authController.loginEmail.text)) {
                          showToast(msg: "Enter valid Email");
                        } else if (authController.loginPassword.text.isEmpty) {
                          showToast(msg: "Enter Password");
                        } else {
                          showDialogHome();
                        }
                      },
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
                      onTap: () {
                        authController.googleSignIn();
                      },
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
                          Get.to(RegisterPage());
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: "Didn't have an account?",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff4B4D50),
                              fontWeight: FontWeight.w500,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Register',
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

  Future<void> showDialogHome() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xffffffff),
          content: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/login.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Congratulations",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff4490FE),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/images/congratulations.png",
                      height: 25,
                    ),
                  ],
                ),
              ),
              const Text(
                "Your account is ready to use",
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff616366),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonText: 'Back to Home',
                onTap: () {
                  Get.to(const Home());
                  // Navigator.of(context).pop();
                },
              ),
            ],
          )),
        );
      },
    );
  }
}
