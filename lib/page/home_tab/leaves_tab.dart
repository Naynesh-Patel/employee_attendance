import 'package:flutter/material.dart';

class LeavesTab extends StatefulWidget {
  const LeavesTab({super.key});

  @override
  State<LeavesTab> createState() => _LeavesTabState();
}

class _LeavesTabState extends State<LeavesTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: Text("LeavesTab")),
        ],
      ),
    );
  }
}
