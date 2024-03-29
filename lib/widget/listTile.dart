 import 'package:flutter/material.dart';

Widget listTile({
  required String image,
  IconData? icon,
  required String data,
  void Function()? onTap
}){
  return Column(
    children: [
      ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Image.asset(image,height: 20,)),
        title: Text(data,
            style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: Icon(icon),
      ),
      const Divider(height: 8,),
    ],
  );
}