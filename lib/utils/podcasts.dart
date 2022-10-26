import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PodCast extends StatelessWidget {
  String podPath;
  String podTitle;
  String podAuthor;

  PodCast({
    required this.podAuthor,
    required this.podPath,
    required this.podTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(podPath),
              ),
            ),
          ),
          SizedBox(height: 3),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$podTitle\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                TextSpan(
                  text: '$podAuthor',
                  style: TextStyle(
                    color: HexColor('#868686'),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
