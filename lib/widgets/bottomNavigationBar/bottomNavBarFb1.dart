import 'package:flutter/material.dart';

class BottomNavBarFb1 extends StatefulWidget {
  const BottomNavBarFb1({Key? key}) : super(key: key);

  @override
  _BottomNavBarFb1State createState() => _BottomNavBarFb1State();
}

class _BottomNavBarFb1State extends State<BottomNavBarFb1> {
  String tabSelected = 'Doc';

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Doc",
                  icon: Icons.feed,
                  selected: tabSelected == 'Doc',
                  onPressed: () {
                    setState(() {
                      tabSelected = 'Doc';
                    });
                  }),
              IconBottomBar(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: tabSelected == 'Search',
                  onPressed: () {
                    setState(() {
                      tabSelected = 'Search';
                    });
                  }),
              IconBottomBar2(
                  text: "Home",
                  icon: Icons.home,
                  selected: false,
                  onPressed: () {
                    setState(() {
                      tabSelected = 'Home';
                    });
                  }),
              IconBottomBar(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected: tabSelected == 'Cart',
                  onPressed: () {
                    setState(() {
                      tabSelected = 'Cart';
                    });
                  }),
              IconBottomBar(
                  text: "Calendar",
                  icon: Icons.date_range_outlined,
                  selected: tabSelected == 'Calendar',
                  onPressed: () {
                    setState(() {
                      tabSelected = 'Calendar';
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = const Color(0xff4338CA);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
