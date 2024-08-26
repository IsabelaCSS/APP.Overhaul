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
            top: -55,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 250,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          // Barra de pesquisa
          Positioned(
            top: 120, // Posiciona a barra de pesquisa abaixo da logo
            left: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 7),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          // Texto abaixo da barra de pesquisa
          const Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Marcas parceiras',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 69, 69, 69),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 210,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BrandIcon('img/logo.png'),
                  BrandIcon('img/logo.png'),
                  BrandIcon('img/logo.png'),
                ],
              ),
            ),
          ),
        
          Positioned( //divisão para os produtos
            top: 380,
            left: 0,
            right: 0,
            child: Container(
              height: 900,
               decoration: const BoxDecoration(// Altura da divisão
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)), // Bordas arredondadas no topo
               ),
            ),
          ),
           const Positioned(
            top: 415,
            left: 45,
            right: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mais Vendidos',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Poppins',

                ),
              ),
            ),
          ),
          const Positioned(
            top: 420,
            left: 0,
            right: 45,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Ver Tudo',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 56, 56, 56),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BrandIcon extends StatelessWidget {
  final String imagePath;

  const BrandIcon(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      backgroundImage: AssetImage(imagePath),
    );
  }
}