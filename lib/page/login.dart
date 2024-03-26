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
                  height: 20,
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
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'HR Atteendance!',
                          style: TextStyle(
                              color: Color(0xff3E8DFE),
                              fontWeight: FontWeight.w400,
                              fontSize: 27)),
                    ],
                  ),
                ),
                const Text(
                  "Hello There Login To Continue",
                  style: TextStyle(
                    color: Color(0xffC8CACE),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  labelText: "Email Address",
                  // hintText: 'Email Address',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  labelText: "Password",
                  // hintText: 'Password',
                  suffixFixWidget: Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff73ACFE),
                        ),
                      ),
                    )
                  ],
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
                  "Or Continue With Social Account",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: const Color(0xffEEEFF0), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 30,
                      ),
                      const Text(
                        "Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff484A4D),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register',
                              style: TextStyle(
                                  color: Color(0xff73ACFE),
                                  fontWeight: FontWeight.w400,
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
          // title: const Text('AlertDialog Title'),
          backgroundColor: const Color(0xffffffff),
          content: SingleChildScrollView(
              child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                width: 150,
                height: 150,
              ),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff4490FE),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "Your account is ready to use",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff616366),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
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
