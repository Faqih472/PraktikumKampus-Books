import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key}); //

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState(); //
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.green.shade700; // Warna tema awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color, // Background color dari screen ini
      appBar: AppBar(
        // Tambahkan nama panggilan Anda pada properti title
        title: const Text('Navigation Dialog Screen - Faqih'), //
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'), //
          onPressed: () {
            // Langkah 4: Panggil method _showColorDialog di ElevatedButton
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  // Langkah 3: Tambah method async _showColorDialog
  Future<void> _showColorDialog(BuildContext context) async {
    // Menampilkan dialog dan menunggu hasil dari showDialog
    final returnedColor = await showDialog(
      context: context,
      barrierDismissible: false, // Dialog tidak bisa ditutup dengan klik di luar
      builder: (_) => AlertDialog(
        title: const Text('Very important question'), //
        content: const Text('Please choose a color'), //
        actions: <Widget>[
          TextButton(
            child: const Text('Red'), //
            onPressed: () {
              // Soal 17: Ganti dengan warna favorit Anda
              Navigator.pop(context, Colors.pink.shade700); // Mengembalikan warna ke layar sebelumnya
            },
          ),
          TextButton(
            child: const Text('Green'), //
            onPressed: () {
              // Soal 17: Ganti dengan warna favorit Anda
              Navigator.pop(context, Colors.lime.shade700); // Mengembalikan warna ke layar sebelumnya
            },
          ),
          TextButton(
            child: const Text('Blue'), //
            onPressed: () {
              // Soal 17: Ganti dengan warna favorit Anda
              Navigator.pop(context, Colors.deepPurple.shade700); // Mengembalikan warna ke layar sebelumnya
            },
          ),
        ],
      ),
    );

    // Perbarui warna jika returnedColor tidak null dan merupakan Color
    if (returnedColor != null && returnedColor is Color) {
      setState(() {
        color = returnedColor;
      });
    } else {
      // Jika dialog ditutup tanpa memilih (misal tombol back), set ke warna default
      setState(() {
        color = Colors.blue.shade700;
      });
    }
  }
}