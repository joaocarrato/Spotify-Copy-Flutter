// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_copy/accents/cores.dart';
import 'package:spotify_copy/utils/albums.dart';
import 'package:spotify_copy/utils/podcasts.dart';
import 'package:spotify_copy/utils/recent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BARRA INICIAL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bom dia',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications_on_outlined),
                          SizedBox(width: 20),
                          Icon(Icons.history_toggle_off),
                          SizedBox(width: 20),
                          Icon(Icons.settings),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // TILE MÚSICA E PODCAST
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#2A2A2A'),
                        ),
                        child: Text(
                          'Música',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#2A2A2A'),
                        ),
                        child: Text(
                          'Podcasts e programas',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Albums(
                      imagePathF: 'assets/images/djonga.jpg',
                      titleF: 'O Dono do Lugar',
                      imagePathS: 'assets/images/Bluesman.jpeg',
                      titleS: 'Bluesman'),
                  Albums(
                      imagePathF: 'assets/images/kendrick.png',
                      titleF: 'Mr.Morale & The\nBig Steppers',
                      imagePathS: 'assets/images/jazz.jpg',
                      titleS: 'Jazz in the\nBackground'),
                  Albums(
                      imagePathF: 'assets/images/daddy.jpg',
                      titleF: 'NGC Daddy',
                      imagePathS: 'assets/images/jazz20.jpg',
                      titleS: "Jazz 20's &30's"),

                  SizedBox(height: 10),

                  // NOVO LANÇAMENTO
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/whitebuffalo.jpg'),
                        radius: 22,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Novo lançamento de\n',
                              style: TextStyle(
                                  fontSize: 12, color: HexColor('#868686')),
                            ),
                            TextSpan(
                              text: 'The White Buffalo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // ALBUM LANÇAMENTO
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#292929'),
                      ),

                      // IMAGEM E TEXTO
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Row(
                          children: [
                            Container(
                              width: 125,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/not_today.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Not Today / Winter Act 2\n',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Single • The White Buffalo',
                                          style: TextStyle(
                                            color: HexColor('#868686'),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.grey[400],
                                      ),
                                      SizedBox(width: 108),
                                      Icon(
                                        Icons.play_circle,
                                        size: 32,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // EPISÓDIOS PARA VOCÊ
                  Text(
                    'Episódios para você',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // PLAYLIST EPISODIOS
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          PodCast(
                              podAuthor: 'Bsa',
                              podPath: 'assets/podcast/pod0.jpg',
                              podTitle: '#01 Odeio ter medo'),
                          PodCast(
                              podAuthor: 'Garyvee',
                              podPath: 'assets/podcast/pod1.jpg',
                              podTitle: 'The Audio Experience'),
                          PodCast(
                              podAuthor: 'Alexandre',
                              podPath: 'assets/podcast/pod2.jpg',
                              podTitle: 'Viagem de negócios'),
                          PodCast(
                              podAuthor: 'RSS News',
                              podPath: 'assets/podcast/pod3.jpg',
                              podTitle: 'Noticias da semana'),
                          PodCast(
                              podAuthor: 'IFH',
                              podPath: 'assets/podcast/pod4.png',
                              podTitle: 'Discussão Politica'),
                        ],
                      ),
                    ),
                  ),

                  // TOCADOS RECENTEMENTE
                  Text(
                    'Tocados recentemente',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 125,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Recent(
                            recentPath: 'assets/images/not_today.jpg',
                            recentTitle: 'Not Today',
                          ),
                          Recent(
                            recentPath: 'assets/images/Bluesman.jpeg',
                            recentTitle: 'Bluesman',
                          ),
                          Recent(
                            recentPath: 'assets/images/djonga.jpg',
                            recentTitle: 'O Dono do Lugar',
                          ),
                          Recent(
                            recentPath: 'assets/images/jazz.jpg',
                            recentTitle: 'Jazz 20\'s',
                          ),
                          Recent(
                            recentPath: 'assets/images/daddy.jpg',
                            recentTitle: 'NGC Daddy',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
