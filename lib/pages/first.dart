// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_copy/pages/home_page.dart';
import 'package:spotify_copy/pages/library_page.dart';
import 'package:spotify_copy/pages/search_page.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  // VARIAVEIS
  List pages = [
    HomePage(),
    Search(),
    Library(),
  ];

  int _currentPage = 0;
  int _currentIndex = 0;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // CORPO
      body: pages[_currentPage],

      // BARRA DE NAVEGAÇÃO
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomNavigationBar(
          
          iconSize: 20,
          backgroundColor: Colors.grey[900]!.withOpacity(0.94),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted_sharp),
              label: 'Sua Biblioteca',
            ),
          ],
        ),
      ),
    );
  }
}
