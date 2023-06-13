import 'package:flutter/material.dart';

class MyCustomBottomNavBar extends StatefulWidget {
  final Color backgroundColor;
  final Color selectedColor;
  final Color unselectedColor;

  const MyCustomBottomNavBar({
    this.backgroundColor = Colors.white,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.black,
  });

  @override
  _MyCustomBottomNavBarState createState() => _MyCustomBottomNavBarState();
}

class _MyCustomBottomNavBarState extends State<MyCustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: 56,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('hehe')),
        ));
  }
}
