// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_copy/pages/first.dart';
import 'package:spotify_copy/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
        textTheme:
            TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle()).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: First(),
      debugShowCheckedModeBanner: false,
    );
  }
}
