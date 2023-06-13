import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/Counter.dart';
import 'package:my_flutter_app/widgets/bottomNavigationBar/bottomNavBarFb1.dart';
import 'package:my_flutter_app/widgets/bottomNavigationBar/myCustomBottomNavBar.dart';
import 'package:my_flutter_app/widgets/bottomNavigationBar/transparentBtmNavBarCurvedFb1.dart';

@RoutePage()
class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Preview')),
        body: Counter(),
        bottomNavigationBar: MyCustomBottomNavBar());
  }
}
