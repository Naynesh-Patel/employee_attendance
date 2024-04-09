import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  String text1 = "Please read these terms of service, carefully before using our app operated by us.";
  String text2 = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more- or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
  String text3 = "Please read these privacy policy, carefully before using our app operated by us.";
  String text4 = "There are many variations of passages ofLorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.If you are going to use a passage of LoremIpsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.";
  String text5 = "All the Lorem Ipsum generators on theInternet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words,combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.";
  String text6 = "The generated Lorem Ipsum is there fore always free from repetition, injected humour, or non-characteristic words etc.";

  late TabController tabController;

  final ImagePicker picker = ImagePicker();
  XFile? image;

  bool enterPasswordVisible=false;
  bool reEnterPasswordVisible=false;
  bool loginPasswordVisible=false;
  bool registerPasswordVisible=false;
  bool confirmPasswordVisible=false;

  TextEditingController firstName=TextEditingController();
  TextEditingController lastName=TextEditingController();
  TextEditingController registerEmail=TextEditingController();
  TextEditingController registerPassword=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();

  TextEditingController newPassword=TextEditingController();
  TextEditingController reEnterPassword=TextEditingController();

  TextEditingController loginEmail=TextEditingController();
  TextEditingController loginPassword=TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();
  FocusNode focusNode6 = FocusNode();
  FocusNode focusNode7 = FocusNode();
  FocusNode focusNode8 = FocusNode();
  FocusNode focusNode9 = FocusNode();

  bool isBlank=false;

//   Edit Profile

  TextEditingController eFirstName=TextEditingController();
  TextEditingController eLastName=TextEditingController();
  TextEditingController eEmail=TextEditingController();
  TextEditingController phoneNumber=TextEditingController();
  TextEditingController address=TextEditingController();

  FocusNode focusNode10 = FocusNode();
  FocusNode focusNode11 = FocusNode();
  FocusNode focusNode12 = FocusNode();
  FocusNode focusNode13 = FocusNode();
  FocusNode focusNode14 = FocusNode();

//   Change Password

  bool changePasswordVisible=false;
  bool changePasswordVisible2=false;

  TextEditingController changePassword=TextEditingController();
  TextEditingController changePassword2=TextEditingController();

  FocusNode focusNode15 = FocusNode();
  FocusNode focusNode16 = FocusNode();

}
