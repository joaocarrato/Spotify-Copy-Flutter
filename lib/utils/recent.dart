import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  String recentPath;
  String recentTitle;

  Recent({
    required this.recentPath,
    required this.recentTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recentPath),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            recentTitle,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
