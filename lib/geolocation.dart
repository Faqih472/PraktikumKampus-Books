import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart'; // Import geolocator package

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
  void initState() {
    super.initState();
    // Panggil getPosition() saat state dibangun
    getPosition().then((Position myPos) {
      setState(() {
        myPosition = 'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
      });
    });
  }

  // Metode untuk mendapatkan posisi GPS
  Future<Position> getPosition() async {
    // Meminta izin lokasi
    await Geolocator.requestPermission();
    // Memeriksa apakah layanan lokasi diaktifkan
    await Geolocator.isLocationServiceEnabled();

    // Soal 12: Tambahkan delay di sini agar animasi loading terlihat
    await Future.delayed(const Duration(seconds: 3));

    // Mendapatkan posisi saat ini
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high, // Akurasi tinggi untuk lokasi
    );
    return position;
  }

  @override
  Widget build(BuildContext context) {
    // Langkah 8: Logika untuk menampilkan CircularProgressIndicator atau teks posisi
    final myWidget = myPosition == ''
        ? const CircularProgressIndicator() // Tampilkan indikator loading jika myPosition kosong
        : Text(myPosition); // Tampilkan teks posisi jika myPosition sudah ada

    return Scaffold(
      appBar: AppBar(
        // Soal 11: Tambahkan nama panggilan Anda pada properti title
        title: const Text('Current Location - Faqih'),
      ),
      body: Center(
        child: myWidget, // Menampilkan myWidget (indikator loading atau teks)
      ),
    );
  }
}
