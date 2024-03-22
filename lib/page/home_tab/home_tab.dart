import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profile_home.png",
                height: 40,
              ),
              const Column(
                children: [
                  Text(
                    "Michael Mitc",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff313437),
                        fontSize: 19),
                  ),
                  Text(
                    "Lead UI/UX Designer",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff313437),
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const Center(child: Text("home"))
        ],
      ),
    );
  }
}
