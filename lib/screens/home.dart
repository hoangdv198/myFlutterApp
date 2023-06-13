import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              CategoryList(
                categories: ['Movies', 'TV Shows', 'Anime', 'My List'],
                onPressed: (category) {
                  print('Pressed category: $category');
                  // Do something when a category is pressed
                },
              ),
              FilmPosterList(
                filmPosters: [
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002706?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002648?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002678?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002715?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002632?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002681?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500'
                ],
                iconSize: 48.0,
                heightPoster: 260,
                viewportFraction: 0.4,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Watched',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
              FilmPosterList(
                filmPosters: [
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002706?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002648?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002678?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002715?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002632?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002681?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500'
                ],
                iconSize: 48.0,
                heightPoster: 130,
                viewportFraction: 0.23,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Favorites',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
              FilmPosterList(
                filmPosters: [
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002706?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002648?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002678?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002715?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002632?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500',
                  'https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002681?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500'
                ],
                iconSize: 48.0,
                heightPoster: 130,
                viewportFraction: 0.23,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: const Color.fromRGBO(255, 255, 255, 1),
          buttonBackgroundColor: Colors.white,
          height: 60,
          animationDuration: const Duration(milliseconds: 300),
          items: const [
            Icon(Icons.home, size: 30),
            Icon(Icons.play_arrow, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.account_circle, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/e4/18/e2/e418e22729bd7a202c563e08463b6ad9.jpg'),
            ),
          ),
          SizedBox(width: 20),
          Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white54),
                  ),
                  Text(
                    'Thomas Dang.',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final List<String> categories;
  final Function(String) onPressed;

  CategoryList({required this.categories, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return TextButton(
            onPressed: () => onPressed(category),
            child: Text(
              category,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class FilmPosterList extends StatelessWidget {
  final List<String> filmPosters;
  final double iconSize;
  final double heightPoster;
  final double viewportFraction;
  final PageController controller = PageController();

  FilmPosterList(
      {required this.filmPosters,
      required this.iconSize,
      required this.heightPoster,
      this.viewportFraction = 0.8});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: heightPoster,
        viewportFraction: viewportFraction,
        initialPage: 0,
        enlargeFactor: 0.8,
      ),
      items: filmPosters.map((posterImage) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      posterImage,
                    ),
                  ),
                  Icon(
                    Icons.play_circle_fill,
                    size: iconSize,
                    color: const Color.fromRGBO(255, 255, 255, 100),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

// No state included
class TransparentBtmNavBarCurvedFb1 extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;

  TransparentBtmNavBarCurvedFb1(
      {this.primaryColor = Colors.green,
      this.secondaryColor = Colors.white,
      Key? key})
      : backgroundColor = Colors.black.withOpacity(.5),
        super(
          key: key,
        );

  @override
  _TransparentBtmNavBarCurvedFb1State createState() =>
      _TransparentBtmNavBarCurvedFb1State();
}

class _TransparentBtmNavBarCurvedFb1State
    extends State<TransparentBtmNavBarCurvedFb1> {
  //- - - - - - - - - instructions - - - - - - - - - - - - - - - - - -
  // WARNING! MUST ADD extendBody: true; TO CONTAINING SCAFFOLD
  //
  // Instructions:
  //
  // add this widget to the bottomNavigationBar property of a Scaffold, along with
  // setting the extendBody parameter to true i.e:
  //
  // Scaffold(
  //  extendBody: true,
  //  bottomNavigationBar: BottomNavBarCurvedFb1()
  // )
  //
  // Properties such as color and height can be set by changing the properties at the top of the build method
  //
  // For help implementing this in a real app, watch https://www.youtube.com/watch?v=C0_3w0kd0nc. The style is different, but connecting it to navigation is the same.
  //
  //- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    final primaryColor = widget.primaryColor;
    final secondaryColor = widget.secondaryColor;
    final backgroundColor = widget.backgroundColor;

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height + 6),
            painter: BottomNavCurvePainter(backgroundColor: backgroundColor),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                backgroundColor: primaryColor,
                child: const Icon(Icons.landscape),
                elevation: 0.1,
                onPressed: () {}),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: true,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: false,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                NavBarIcon(
                    text: "Add",
                    icon: Icons.local_grocery_store_outlined,
                    selected: false,
                    onPressed: () {},
                    defaultColor: secondaryColor,
                    selectedColor: primaryColor),
                NavBarIcon(
                  text: "Calendar",
                  icon: Icons.date_range_outlined,
                  selected: false,
                  onPressed: () {},
                  selectedColor: primaryColor,
                  defaultColor: secondaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
