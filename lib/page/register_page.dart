import 'package:employee_attendance/controller/profile_controller.dart';
import 'package:employee_attendance/widget/flutter_toast.dart';
import 'package:employee_attendance/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  ProfileController profileController = Get.find();

  @override
  void initState() {
    super.initState();
    profileController.registerPasswordVisible = true;
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
                      controller: profileController.firstName,
                      labelText: "First Name",
                      labelStyle: TextStyle(
                          color: !profileController.focusNode5.hasFocus
                              ? profileController.firstName.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "First Name",
                      focusNode: profileController.focusNode5,
                      border: Border.all(
                          color: !profileController.focusNode5.hasFocus
                              ? profileController.firstName.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: profileController.lastName,
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                          color: !profileController.focusNode6.hasFocus
                              ? profileController.lastName.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "Last Name",
                      focusNode: profileController.focusNode6,
                      border: Border.all(
                          color: !profileController.focusNode6.hasFocus
                              ? profileController.lastName.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: profileController.registerEmail,
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                          color: !profileController.focusNode7.hasFocus
                              ? profileController.registerEmail.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      hintText: "Email Address",
                      focusNode: profileController.focusNode7,
                      border: Border.all(
                          color: !profileController.focusNode7.hasFocus
                              ? profileController.registerEmail.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: profileController.registerPassword,
                      obscureText: profileController.registerPasswordVisible,
                      hintText: "Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: !profileController.focusNode8.hasFocus
                              ? profileController.registerPassword.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      border: Border.all(
                          color: !profileController.focusNode8.hasFocus
                              ? profileController.registerPassword.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                      focusNode: profileController.focusNode8,
                      suffixIcon: IconButton(
                        icon: Icon(profileController.registerPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              profileController.registerPasswordVisible =
                                  !profileController.registerPasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    PTextField(
                      controller: profileController.confirmPassword,
                      obscureText: profileController.confirmPasswordVisible,
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          color: !profileController.focusNode9.hasFocus
                              ? profileController.confirmPassword.text.isEmpty
                                  ? Colors.black54
                                  : Colors.blue
                              : Colors.blue),
                      border: Border.all(
                          color: !profileController.focusNode9.hasFocus
                              ? profileController.confirmPassword.text.isNotEmpty
                                  ? Colors.blue
                                  : Colors.black12
                              : Colors.blue),
                      focusNode: profileController.focusNode9,
                      suffixIcon: IconButton(
                        icon: Icon(profileController.confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              profileController.confirmPasswordVisible =
                                  !profileController.confirmPasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height*0.01),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: const BorderSide(color: Colors.grey),
                          value: profileController.isBlank,
                          onChanged: (value) {
                            setState(() {
                              profileController.isBlank = value!;
                            });
                          },
                        ),
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.clip,
                            text: TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              color: Colors.black
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Terms & Conditions & Privacy Policy',
                                  style: TextStyle(
                                      color: Color(0xff73ACFE),
                                      fontSize: 14)),
                              TextSpan(
                                text: " see out by this side."
                              )
                            ],
                          ),),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(8),
<<<<<<<<< Temporary merge branch 1
                      onTap: () {
                        if (profileController.firstName.text.isEmpty) {
                          showToast(msg: "Enter your Name");
                        } else if (profileController.lastName.text.isEmpty) {
                          showToast(msg: "Enter your Surname");
                        } else if (profileController.registerEmail.text.isEmpty) {
                          showToast(msg: "Enter Email");
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(profileController.registerEmail.text)) {
                          showToast(msg: "Enter valid Email");
                        } else if (profileController
                            .registerPassword.text.isEmpty) {
                          showToast(msg: "Create Password");
                        } else if (profileController.registerPassword.text.length <
                            8) {
                          showToast(
                              msg: "Password required at least 8 characters");
                        } else if (profileController
                            .confirmPassword.text.isEmpty) {
                          showToast(msg: "Re-Enter Password");
                        } else if (profileController.confirmPassword.text !=
                            profileController.registerPassword.text) {
                          showToast(msg: "Password not matched");
                        }else if(!profileController.isBlank){
                          showToast(msg: "Apply the conditions");
                        }else {
                          Get.offAll(Home());
                        }
                      },
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 50),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color:!profileController.isBlank
                                ? const Color(0xffEEEFF0)
                                : const Color(0xff3085FE)),
                        child: Center(
                            child: Text(
                          "Register",
                          style: TextStyle(color: !profileController.isBlank?Colors.black:Colors.white, fontSize: 17),
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
