import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Image Asset'),
        ),
        body: Center(
          child: Image.asset(
            'assets/image/LogoBemFti.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}