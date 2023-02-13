import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/helpers.dart';
import 'package:spotify_clone/widgets/home_big_tile.dart';
import 'package:spotify_clone/widgets/home_page_recent_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavItem,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              activeIcon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined),
              label: 'Library',
              activeIcon: Icon(Icons.library_music_rounded))
        ],
        fixedColor: Colors.white,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _currentNavItem = index;
          });
        },
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Salutations and top navbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'What\'s up Bof',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.notifications_outlined,
                            size: 30,
                          ),
                          HorizontalSpacer(width: 15),
                          Icon(
                            Icons.history_outlined,
                            size: 30,
                          ),
                          HorizontalSpacer(width: 15),
                          Icon(
                            Icons.settings_outlined,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                  const VerticalSpacer(height: 20),

                  //1st capsules
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Music',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const HorizontalSpacer(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Podcasts & Shows',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),

                  const VerticalSpacer(height: 20),
                  //Tiles
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          HomePageRecentTile(
                              imagePath: 'assets/images/protoje.jpg',
                              title: 'Protoje'),
                          HomePageRecentTile(
                              imagePath: 'assets/images/wakadinaliVom.jpeg',
                              title: 'Victims of Madness'),
                        ],
                      ),
                      const VerticalSpacer(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          HomePageRecentTile(
                              imagePath: 'assets/images/lilmama.jpg',
                              title: 'Lil Mama'),
                          HomePageRecentTile(
                              imagePath: 'assets/images/khalidFs.png',
                              title: 'Free Spirit'),
                        ],
                      ),
                      const VerticalSpacer(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          HomePageRecentTile(
                              imagePath: 'assets/images/protojeSLT.jpg',
                              title: 'Search of Lost Time'),
                          HomePageRecentTile(
                              imagePath: 'assets/images/lilmama.jpg',
                              title: 'Free Spirit'),
                        ],
                      ),
                    ],
                  ),
                  const VerticalSpacer(height: 20),
                  const Text('Jump back in',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w500)),
                  const VerticalSpacer(height: 20),

                  // Big tiles Row 1

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        home_big_tile(
                            imagePath: 'assets/images/kendrickMBS.jpeg',
                            title: 'Mr. Morale and the Big Steppers'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/protojeSLT.jpg',
                            title: 'Search of Lost Time'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/savagelevel.jpg',
                            title: 'Savage Level'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/kendrickDamn.jpeg',
                            title: 'Damn'),
                        HorizontalSpacer(width: 20)
                      ],
                    ),
                  ),

                  const VerticalSpacer(height: 20),
                  const Text('Made for you',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w500)),
                  const VerticalSpacer(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        home_big_tile(
                            imagePath: 'assets/images/khalidFs.png',
                            title: 'Free Spirit'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/kendrickDamn.jpeg',
                            title: 'Damn'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/jcoleFHD.jpg',
                            title: 'Forest Hill Drive'),
                        HorizontalSpacer(width: 20),
                        home_big_tile(
                            imagePath: 'assets/images/wakadinaliVom.jpeg',
                            title: 'Wakadinali\'s Victims of Madness'),
                        HorizontalSpacer(width: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
