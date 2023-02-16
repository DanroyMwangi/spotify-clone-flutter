import 'package:flutter/material.dart';
import 'package:spotify_clone/config/colors/colors.dart';
import 'package:spotify_clone/config/constants.dart';
import 'package:spotify_clone/utils/helpers.dart';

class SongTile extends StatelessWidget {
  const SongTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fashionista',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  downloadIconSmall,
                  const HorizontalSpacer(width: 4),
                  Text(
                    'Savara',
                    style: TextStyle(color: greyColor),
                  ),
                ],
              )
            ],
          ),
          moreIcon
        ],
      ),
    );
  }
}
