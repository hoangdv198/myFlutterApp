import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/assets/images/svg/tabbar_home.dart';
import 'package:my_flutter_app/assets/images/svg/tabbar_post.dart';
import 'package:my_flutter_app/assets/images/svg/tabbar_reels.dart';
import 'package:my_flutter_app/assets/images/svg/tabbar_search.dart';
import 'package:my_flutter_app/features/TabbarScreen1/tabbar_screen1.dart';
import 'package:my_flutter_app/features/TabbarScreen2/tabbar_screen2.dart';
import 'package:my_flutter_app/features/TabbarScreen3/tabbar_screen3.dart';
import 'package:my_flutter_app/features/TabbarScreen4/tabbar_screen4.dart';
import 'package:my_flutter_app/features/TabbarScreen5/tabbar_screen5.dart';

import '../../widgets/avatarCircle.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    TabScreen1(),
    TabScreen2(),
    TabScreen3(),
    TabScreen4(),
    TabScreen5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? iconHomeActiveTabbar
                  : iconHomeInactiveTabbar,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? iconSearchActiveTabbar
                  : iconSearchInactiveTabbar,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: iconPostInactiveTabbar,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? iconReelsActiveTabbar
                  : iconReelsInactiveTabbar,
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: CircleWidget(
                imageUrl:
                    'https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png',
              ),
              label: '',
            ),
          ]),
    );
  }
}
