import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/helpers.dart';

class home_big_tile extends StatelessWidget {
  final String title;
  final String imagePath;
  const home_big_tile({Key? key, required this.title, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            child: Image.asset(imagePath),
          ),
          const VerticalSpacer(height: 10),
          Text(
            title,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          )
        ],
      ),
    );
  }
}
