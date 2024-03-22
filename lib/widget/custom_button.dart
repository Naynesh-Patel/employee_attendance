import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final Function onTap;
  final Color? color;
  const CustomButton(
      {super.key, required this.buttonText, required this.onTap, this.color});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: () {
        widget.onTap();
      },
      child: Container(
        constraints: const BoxConstraints(maxHeight: 50),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.blue),
        child: Center(
            child: Text(
          widget.buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )),
      ),
    );
  }
}
