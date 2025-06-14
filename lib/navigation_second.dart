import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  // Variabel color akan digunakan untuk menyimpan warna yang akan dikembalikan
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Soal 15: Tambahkan nama panggilan Anda pada properti title
        title: const Text('Navigation Second Screen - Faqih'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Red'),
              onPressed: () {
                color = Colors.red.shade700; // Warna favorit Anda
                Navigator.pop(context, color); // Mengembalikan warna merah ke layar sebelumnya
              },
            ),
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                color = Colors.green.shade700; // Warna favorit Anda
                Navigator.pop(context, color); // Mengembalikan warna hijau ke layar sebelumnya
              },
            ),
            ElevatedButton(
              child: const Text('Blue'),
              onPressed: () {
                color = Colors.blue.shade700; // Warna favorit Anda
                Navigator.pop(context, color); // Mengembalikan warna biru ke layar sebelumnya
              },
            ),
          ],
        ),
      ),
    );
  }
}