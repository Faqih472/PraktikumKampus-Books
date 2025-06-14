import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart'; // Pastikan package ini sudah diimport

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Langkah 2: Tambah variabel
  Future<Position>? position;

  // Langkah 3: Tambah initState()
  @override
  void initState() {
    super.initState();
    position = getPosition();
  }

  // Langkah 1: Modifikasi method getPosition()
  Future<Position> getPosition() async {
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  // Langkah 4 & 5: Edit method build() dan tambah handling error
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')), // Menggunakan const untuk Text
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              // Langkah 5: Tambah handling error
              if (snapshot.hasError) {
                return const Text('Something terrible happened!'); // Menggunakan const untuk Text
              }
              return Text(snapshot.data.toString());
            } else {
              return const Text(''); // Menggunakan const untuk Text
            }
          },
        ),
      ),
    );
  }
}