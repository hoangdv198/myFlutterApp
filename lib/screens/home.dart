import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          color: const Color.fromRGBO(255, 255, 255, 0.6),
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
