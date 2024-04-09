import 'package:employee_attendance/profile_pages/change_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late bool onTab;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Notification",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            notification(
                "assets/images/profile.png",
                "You Update Your Profile Picture",
                "You Update Your Profile Picture",
                "Just Now"),
            const Divider(),
            notification(
                "assets/images/profile.png",
                "Password Changed",
                "You ve Completed Change The Password ",
                "April 12,2023,at 20:20 PM"),
            const Divider(),
            notification(
                "assets/images/profile.png",
                "Mark Alen Aplied For Leave",
                "Please accept my leave request  ",
                "April 12,2023,at 20:20 PM"),
            const Divider(),
            notification("assets/images/profile.png", "system update ",
                "Please update to newest app", "April 12,2023,at 20:20 PM"),
            const Divider(),
          ],
        ),
      ),
    );
  }

  notification(image, text, text1, status) {
    return InkWell(
      onTap: () {
        // Get.to(const ChangePassword());
      },
      child: Row(
        children: [
          Image.asset(
            image,
            height: 40,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                text1,
                style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              Text(
                status,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
