import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final pinPutController = TextEditingController();

  int selectedOption = 0;

  late Timer timer;
  RxInt start = 30.obs;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start--;
        }
      },
    );
  }

  bool enterPasswordVisible = false;
  bool reEnterPasswordVisible = false;
  bool loginPasswordVisible = false;
  bool registerPasswordVisible = false;
  bool confirmPasswordVisible = false;

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  TextEditingController newPassword = TextEditingController();
  TextEditingController reEnterPassword = TextEditingController();

  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();
  FocusNode focusNode6 = FocusNode();
  FocusNode focusNode7 = FocusNode();
  FocusNode focusNode8 = FocusNode();
  FocusNode focusNode9 = FocusNode();

  bool isBlank = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<void> googleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      // Get.to(Home());
      print('Error signing in: $error');
    }
  }
}
