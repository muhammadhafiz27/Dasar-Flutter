import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          title: const Text('Contoh Widget Icon'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Google Material Icons
              Icon(
                Icons.add,
                color: Colors.amber,
                size: 50.0,
              ),
              SizedBox(height: 20),
              // Apple Cupertino Icons
              Icon(
                CupertinoIcons.add,
                color: Colors.red,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}