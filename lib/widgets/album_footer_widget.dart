import 'package:flutter/material.dart';
import 'package:spotify_clone/config/constants.dart';
import 'package:spotify_clone/theme/font_theme.dart';
import 'package:spotify_clone/utils/helpers.dart';
import 'package:spotify_clone/widgets/home_big_tile.dart';

class AlbumFooter extends StatefulWidget {
  const AlbumFooter({super.key});

  @override
  State<AlbumFooter> createState() => _AlbumFooterState();
}

class _AlbumFooterState extends State<AlbumFooter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('February 25, 2022'),
              const VerticalSpacer(height: 5),
              Row(
                children: const <Widget>[
                  Text('14 songs'),
                  HorizontalSpacer(width: 5),
                  dotIcon,
                  HorizontalSpacer(width: 5),
                  Text('56 min 22 sec')
                ],
              ),
            ],
          ),
        ),
        const VerticalSpacer(height: 20),
        Row(
          children: const <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/savara.jpeg'),
              radius: 30,
            ),
            HorizontalSpacer(width: 10),
            Text(
              'Savara',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )
          ],
        ),

        const VerticalSpacer(height: 20),
        // Recommendations
        const Text(
          'You might also like',
          style: smallTitle,
        ),
        const VerticalSpacer(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const <Widget>[
              HomeBigTile(
                  title: 'East Mpaka London',
                  imagePath: 'assets/images/emlBB.jpeg'),
              HorizontalSpacer(width: 10),
              HomeBigTile(
                  title: 'Lil Mama', imagePath: 'assets/images/lilmama.jpg'),
              HorizontalSpacer(width: 10),
              HomeBigTile(
                  title: 'Victims of Madness',
                  imagePath: 'assets/images/wakadinaliVom.jpeg'),
              HorizontalSpacer(width: 10),
              HomeBigTile(title: 'Zoza', imagePath: 'assets/images/zoza.jpg'),
              HorizontalSpacer(width: 10),
              HomeBigTile(
                  title: 'Victims of Madness',
                  imagePath: 'assets/images/wakadinaliVom.jpeg'),
            ],
          ),
        ),
        const VerticalSpacer(height: 10)
      ],
    );
  }
}
