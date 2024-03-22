import 'package:flutter/material.dart';

class HolidayTab extends StatefulWidget {
  const HolidayTab({Key? key}) : super(key: key);

  @override
  State<HolidayTab> createState() => _HolidayTabState();
}

class _HolidayTabState extends State<HolidayTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: Text("HolidayTab")),
        ],
      ),
    );
  }
}
