// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_copy/accents/cores.dart';
import 'package:spotify_copy/utils/search_tile.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: SafeArea(
        child: Column(
          children: [
            // TITULO BUSCAR E CAMERA
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
              child: Container(
                padding: EdgeInsets.all(4),
                height: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Buscar',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.camera_alt_outlined),
                      ],
                    ),

                    SizedBox(height: 15),

                    // BARRA DE PESQUISA
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[800],
                          ),
                          border: InputBorder.none,
                          hintText: 'O que você quer ouvir?',
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // LIST VIEW
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  child: ListView(
                    children: [
                      Text(
                        'Navegar por todas as seções',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      // PRIMEIRO E SEGUNDO
                      SearchTile(
                          boxGradientF: Colors.red[400]!,
                          boxGradientS: Colors.red[900]!,
                          sBoxGradientF: Colors.blue[400]!,
                          sBoxGradientS: Colors.blue[900]!,
                          firstTitle: 'Podcasts',
                          secondTitle: 'Feito para\nVocê',
                          firstImage: 'assets/images/daddy.jpg',
                          secondImage: 'assets/images/djonga.jpg'),

                      // TERCEIRO E QUARTO
                      SearchTile(
                          boxGradientF: Colors.purple[400]!,
                          boxGradientS: Colors.purple[900]!,
                          sBoxGradientF: Colors.amber[400]!,
                          sBoxGradientS: Colors.amber[900]!,
                          firstTitle: 'NEWS',
                          secondTitle: 'Brasil',
                          firstImage: 'assets/images/Bluesman.jpeg',
                          secondImage: 'assets/images/jazz.jpg'),

                      // QUINTO E SEXTO
                      SearchTile(
                          boxGradientF: Colors.brown[400]!,
                          boxGradientS: Colors.brown[900]!,
                          sBoxGradientF: Colors.blueGrey[400]!,
                          sBoxGradientS: Colors.blueGrey[900]!,
                          firstTitle: 'Sertanejo',
                          secondTitle: 'Funk',
                          firstImage: 'assets/images/jazz20.jpg',
                          secondImage: 'assets/images/not_today.jpg'),

                      // SÉTIMO E OITAVO
                      SearchTile(
                          boxGradientF: Colors.orange[400]!,
                          boxGradientS: Colors.orange[900]!,
                          sBoxGradientF: Colors.pink[400]!,
                          sBoxGradientS: Colors.pink[900]!,
                          firstTitle: 'Pop',
                          secondTitle: 'Paradas',
                          firstImage: 'assets/images/kendrick.png',
                          secondImage: 'assets/images/whitebuffalo.jpg'),

                      // NONO E DÉCIMO
                      SearchTile(
                          boxGradientF: Colors.cyan[400]!,
                          boxGradientS: Colors.cyan[900]!,
                          sBoxGradientF: Colors.indigo[400]!,
                          sBoxGradientS: Colors.indigo[900]!,
                          firstTitle: 'Eventos ao\nvivo',
                          secondTitle: 'Hip Hop',
                          firstImage: 'assets/images/daddy.jpg',
                          secondImage: 'assets/images/djonga.jpg'),

                      // DECIMO-PRIMEIRO E DECIMO-SEGUNDO
                      SearchTile(
                          boxGradientF: Colors.blueGrey[400]!,
                          boxGradientS: Colors.blueGrey[900]!,
                          sBoxGradientF: Colors.lime[400]!,
                          sBoxGradientS: Colors.lime[900]!,
                          firstTitle: 'Samba e\npagode',
                          secondTitle: 'MPB',
                          firstImage: 'assets/images/daddy.jpg',
                          secondImage: 'assets/images/djonga.jpg'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
