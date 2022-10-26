// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  Color boxGradientF;
  Color boxGradientS;
  Color sBoxGradientF;
  Color sBoxGradientS;
  String firstTitle;
  String secondTitle;
  String firstImage;
  String secondImage;

  SearchTile({
    required this.boxGradientF,
    required this.boxGradientS,
    required this.sBoxGradientF,
    required this.sBoxGradientS,
    required this.firstTitle,
    required this.secondTitle,
    required this.firstImage,
    required this.secondImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  boxGradientF,
                  boxGradientS,
                ],
              ),
            ),
            height: 100,
            width: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  firstTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(firstImage),
                    height: 45,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                sBoxGradientF,
                sBoxGradientS,
              ],
            ),
          ),
          height: 100,
          width: 160,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                secondTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage(secondImage),
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
