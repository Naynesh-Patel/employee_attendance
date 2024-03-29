 import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

Widget textsTile ({required String text1, required String text2}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: Get.height*0.02,),
      Text(text1,style: TextStyle(
          color: Colors.grey
      ),),
      SizedBox(height: Get.height*0.01,),
      Text(text2,style: TextStyle(
          fontSize: 18
      ),),
      const Divider(),
    ],
  );
}