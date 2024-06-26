import 'package:flutter/cupertino.dart';

Widget LeaveWidget(
    {required String text1,
    required String text2,
    required String text3,
    Color? boxColor,
    BoxBorder? border,
    TextStyle? style}) {
  return Container(
    height: 140,
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
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.8),
          ),
          Expanded(
              child: Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.8),
          )),
          Text(
            text3,
            style: style,
          )
        ],
      ),
    ),
  );
}
