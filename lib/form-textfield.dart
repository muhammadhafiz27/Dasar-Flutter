import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Form'),
        ),
        body: const MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _textEditingController = TextEditingController();
  String _nama = "";

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Masukkan nama anda :'),
          const SizedBox(
            height: 10,
          ),
          // Hapus 'const' di sini
          TextField(
            decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                hintText: 'Misalnya Muhammad Hafiz',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person)),
            controller: _textEditingController,
            keyboardType: TextInputType.text,
            onChanged: (text) {
              print('Sedang mengetik teks : $text');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _nama = _textEditingController.text;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Nama anda adalah $_nama')));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber, foregroundColor: Colors.black),
            child: const Text('Tampilkan nama'),
          ),
          Text(
            'Nama Anda : $_nama'
          )
        ],
      ),
    );
  }
}