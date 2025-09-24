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
          title: const Text('Contoh Widget CircleAvatar'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar dengan teks inisial
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: const Text(
                  "IF",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // CircleAvatar dengan ikon
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}