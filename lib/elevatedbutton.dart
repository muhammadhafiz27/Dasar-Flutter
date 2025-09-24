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
          title: const Text('Contoh Elevated Button'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Aksi yang dijalankan ketika tombol ditekan
              print("Tombol ditekan!");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Warna latar belakang tombol
              foregroundColor: Colors.white, // Warna teks dan ikon
              padding: const EdgeInsets.all(20), // Jarak padding di dalam tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // Bentuk tombol dengan sudut melengkung
              ),
            ),
            child: const Text(
              "Elevated Button",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}