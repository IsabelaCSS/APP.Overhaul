import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overhaul',
      home: Scaffold(
        backgroundColor: Color(0xFFC0C0C0), // Define a cor de fundo
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'), // Exibe a imagem
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
