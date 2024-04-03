import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget listTile (
{required String image,
  required String data,
  void Function()? onTap
}
    ) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: Image.asset(image,height: Get.height*0.025,)),
        SizedBox(width: Get.width*0.04,),
        Text(data,
                  style: const TextStyle(fontWeight: FontWeight.w700)),
            const Spacer(),
            const Icon( Icons.arrow_forward_ios_outlined,color: Colors.black87,size: 18,),
          ],
        ),
        Divider(height: Get.height*0.03,color: Colors.grey.shade200,),
      ],
    ),
  );
}

Widget listTile2 (
    {
      required String data,
      void Function()? onTap
    }
    ) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: Image.asset("assets/images/terms-and-conditions.png",height: Get.height*0.025,)),
            SizedBox(width: Get.width*0.04,),
            Text(data,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            const Spacer(),
            Image.asset("assets/images/pdf_download.png",height: Get.height*0.025,)
          ],
        ),
        Divider(height: Get.height*0.03,color: Colors.grey.shade200),
      ],
    ),
  );
}

Widget textsTile ({required String text1, required String text2}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: Get.height*0.01,),
      Text(text1,style: const TextStyle(
          color: Colors.grey,
        fontSize: 13
      ),),
      SizedBox(height: Get.height*0.002,),
      Text(text2,style: const TextStyle(
          fontSize: 17
      ),),
      Divider(color: Colors.grey.shade200),
    ],
  );
}