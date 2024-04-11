import 'package:flutter/material.dart';

class CustomButtonLoader extends StatelessWidget {
  const CustomButtonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 50),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.black),
      child: const Center(
        child: SizedBox(
          width: 25,
          height: 25,
          child: CircularProgressIndicator(color: Colors.black, strokeWidth: 2),
        ),
      ),
    );
  }
}
