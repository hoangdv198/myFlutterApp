
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TabScreen2 extends StatefulWidget {
  const TabScreen2({super.key});

  @override
  State<TabScreen2> createState() => _TabScreen2State();
}

class _TabScreen2State extends State<TabScreen2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Tab2"),
    );
  }
}