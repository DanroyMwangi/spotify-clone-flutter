import 'package:flutter/material.dart';

class HomePageRecentTile extends StatelessWidget {
  final String imagePath;
  final String title;
  const HomePageRecentTile(
      {Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
              color: Colors.grey[800],
              width: 180,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(imagePath),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 20),
                      child: Text(
                        title,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
