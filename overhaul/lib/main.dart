import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overhaul',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(234, 234, 234, 234),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -60,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center, // Centraliza a imagem horizontalmente
              child: Container(
                height: 250, // Altura ajustada
                width: 200,  // Largura ajustada
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/logo.png'),
                    fit: BoxFit.contain, // Mantém a proporção da imagem
                  ),
                ),
              ),
            ),
          ),
          // Adiciona a barra de pesquisa abaixo da imagem
          Positioned(
            top: 100, // Posição logo abaixo da imagem
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                      size: 24.0,
                ),
                ],
              ),
            ),
          ),
      ],
    ),
    ); 
  }
}