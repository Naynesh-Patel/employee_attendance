import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LeavesController extends GetxController {
  Widget container(
      {required String text1,
      required String text2,
      required String text3,
      Color? boxColor,
      BoxBorder? border,
        TextStyle? style
      })
  {
    return Container(
      height: 130,
      width: double.maxFinite,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: boxColor,
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15.8),
            ),
            Expanded(
                child: Text(
              text2,
              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15.8),
            )),
            Text(text3,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
