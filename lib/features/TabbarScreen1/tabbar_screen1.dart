
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/assets/images/svg/icon_send.dart';
import 'package:my_flutter_app/assets/images/svg/logo_ig.dart';

import '../../assets/images/svg/icon_camera.dart';

class TabScreen1 extends StatefulWidget {
  const TabScreen1({super.key});

  @override
  State<TabScreen1> createState() => _TabScreen1State();
}

class _TabScreen1State extends State<TabScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _header()
        ],
      ),
    );
  }
}

class _header extends StatelessWidget {
  const _header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconCamera,
              SizedBox(
                child: logoIg,
                height: 28,
                ),
              iconSend
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}