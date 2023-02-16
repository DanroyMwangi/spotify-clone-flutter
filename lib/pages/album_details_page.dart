import 'package:flutter/material.dart';
import 'package:spotify_clone/config/colors/colors.dart';
import 'package:spotify_clone/config/constants.dart';
import 'package:spotify_clone/utils/helpers.dart';
import 'package:spotify_clone/widgets/album_footer_widget.dart';
import 'package:spotify_clone/widgets/song_tile_widget.dart';

class AlbumDetailsPage extends StatefulWidget {
  const AlbumDetailsPage({super.key});

  @override
  State<AlbumDetailsPage> createState() => _AlbumDetailsPageState();
}

class _AlbumDetailsPageState extends State<AlbumDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Album cover
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset('assets/images/savagelevel.jpg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Album name
                  const Text(
                    'Savage Level',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  ),
                  // Artist name,
                  const SizedBox(height: 5),
                  const Text(
                    'Savara',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  // Artist name
                  Text(
                    'Album . 2022',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: greyColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          favouriteIcon,
                          const SizedBox(
                            width: 10,
                          ),
                          downloadIcon,
                          const HorizontalSpacer(
                            width: 10,
                          ),
                          moreIcon,
                        ],
                      ),
                      Row(children: <Widget>[
                        shuffleIcon,
                        const HorizontalSpacer(width: 10),
                        playIcon
                      ])
                    ],
                  ),
                  const VerticalSpacer(height: 5),
                  Column(
                    children: const <Widget>[
                      // Song tile
                      SongTile(),
                      SongTile(), SongTile(), SongTile(), SongTile(),
                    ],
                  ),
                  const VerticalSpacer(height: 10),
                  // Album footer
                  const AlbumFooter()
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
