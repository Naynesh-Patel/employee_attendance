import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:employee_attendance/forgot_password/forgot_password_page.dart';
import 'package:employee_attendance/page/home.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:employee_attendance/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthController authController = Get.find();
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        text: 'HR Atteendance!',
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
                const CustomTextField(
                  labelText: "Email Address",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  // hintText: 'Email Address',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    labelText: "Password",
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    // hintText: 'Password',
                    suffixFixWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    )),
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
                  height: 20,
                ),
                CustomButton(
                  buttonText: 'Login',
                  onTap: () {
                    showDialogHome();
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
                    onTap: () {},
                    child: RichText(
                      text: const TextSpan(
                        text: 'Didn t have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff4B4D50),
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Register',
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
          )),
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
