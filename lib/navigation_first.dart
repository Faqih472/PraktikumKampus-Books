import 'package:flutter/material.dart';
import 'package:future_demo/navigation_second.dart'; // Pastikan import ini benar setelah membuat navigation_second.dart

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700; // Warna tema awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color, // Background color dari screen ini
      appBar: AppBar(
        // Soal 15: Tambahkan nama panggilan Anda pada properti title
        title: const Text('Navigation First Screen - Faqih'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context); // Panggil method untuk navigasi
          },
        ),
      ),
    );
  }

  // Langkah 3: Tambah method _navigateAndGetColor
  Future<void> _navigateAndGetColor(BuildContext context) async {
    // Navigator.push akan mengembalikan nilai dari layar kedua
    final returnedColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()),
    );

    // Perbarui warna jika returnedColor tidak null, default ke Colors.blue jika null
    if (returnedColor != null && returnedColor is Color) {
      setState(() {
        color = returnedColor;
      });
    } else {
      // Jika kembali tanpa memilih warna atau dengan tombol back, default ke biru
      setState(() {
        color = Colors.blue;
      });
    }
  }
}