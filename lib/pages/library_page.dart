import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      body: Center(
        child: Text('Library Page'),
      ),
    );
  }
}
