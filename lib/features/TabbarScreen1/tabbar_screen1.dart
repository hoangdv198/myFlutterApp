
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TabScreen1 extends StatefulWidget {
  const TabScreen1({super.key});

  @override
  State<TabScreen1> createState() => _TabScreen1State();
}

class _TabScreen1State extends State<TabScreen1> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Tab1"),
    );
  }
}