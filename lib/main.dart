import 'dart:async';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Perubahan untuk Soal 1 ada di baris ini
      title: 'Future Demo - FAQIH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  // Method dari Praktikum 1 (tidak digunakan di Praktikum 2)
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/LKLbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // Langkah 1: Menambahkan tiga method async baru
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3)); //
    return 1; //
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3)); //
    return 2; //
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3)); //
    return 3; //
  }

  // Langkah 2: Menambahkan method count()
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 4 - Faqih'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            // Langkah 3: Memanggil count()
            onPressed: () {
              count();
              // Kode dari praktikum sebelumnya di-comment
              // setState(() {});
              // getData().then((value) {
              //   result = value.body.toString().substring(0, 450);
              //   setState(() {});
              // }).catchError((_) {
              //   result = 'An error occurred';
              //   setState(() {});
              // });
            },
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
}