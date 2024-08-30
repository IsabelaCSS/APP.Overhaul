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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Logo
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 140,
                height: 120, // Reduzi a altura da logo
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/logo.png'),
                  ),
                ),
              ),
            ),
            // Espaço entre a logo e a barra de pesquisa
            const SizedBox(height: 0), // Menor espaçamento entre a logo e a barra de pesquisa
            // Barra de pesquisa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
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
            const SizedBox(height: 30),
            const Text(
              'Marcas parceiras',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 69, 69, 69),
              ),
            ),
            const SizedBox(height: 0),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BrandIcon('img/logo.png'),
                  BrandIcon('img/logo.png'),
                  BrandIcon('img/logo.png'),
                ],
              ),
            ),
            // Divisão para os produtos
            Container(
              height: 900,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)), // Bordas arredondadas no topo
              ),
               child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Mais Vendidos',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Poppins',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Ação ao clicar no "Ver Tudo"
                          },
                          child: const Text(
                            'Ver Tudo',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 56, 56, 56),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 800, // Defini uma altura específica para o GridView
                      child: GridView.builder(
                        itemCount: 4, // número de cards que você quer mostrar
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // duas colunas
                          mainAxisSpacing: 70,
                          crossAxisSpacing: 5,
                          childAspectRatio: 0.75, // proporção do card
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductCard(
                            imagePath: 'img/logo.png', // Substitua pelo caminho da sua imagem
                            productName: 'Renault Kwid',
                            price: 'R\$45.000',
                            rating: 4.5,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
           Container(
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                child: Column(
                  children: [
                  Text(
                    'OVERHAUL',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center, 
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Faça uma visita',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center, 
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fale Conosco',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'overhaul@gmail.com\n(11) 3675-5436',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center, 
                  ),
                ],
              ),
            ),
           ),
          ],
        ),
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

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;
  final double rating;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.contain, height: 180, width: double.infinity),
            const SizedBox(height: 10),
            Text(
              productName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[700], size: 18),
                Text(
                  '$rating',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
