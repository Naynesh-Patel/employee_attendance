import 'package:employee_attendance/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PTextField extends StatefulWidget {

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final FocusNode? focusNode;
  final BoxBorder? border;
  final TextStyle? labelStyle;

  const PTextField({super.key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.controller,
    this.obscureText,
    this.focusNode,
    this.border,
    this.labelStyle,
  });

  @override
  State<PTextField> createState() => _PTextFieldState();
}

class _PTextFieldState extends State<PTextField> {

  AuthController authController =Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: widget.border,
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText??false,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.black26,fontSize: 15),
            labelText: widget.labelText,
            labelStyle: widget.labelStyle,
            contentPadding: const EdgeInsets.only(
                top: 7,left: 10,right: 10),
            suffixIcon: widget.suffixIcon,
            alignLabelWithHint: false),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        // onTap: () {
        //   setState(() {
        //
        //   });
        // },
        // onSubmitted: (value) {
        //   setState(() {
        //
        //   });
        // },
      ),
    );
  }
}

