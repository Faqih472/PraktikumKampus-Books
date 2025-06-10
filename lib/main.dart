import 'dart:async';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart'; // Import for FutureGroup

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

  late Completer completer;

  // Existing method from previous practicals, not used in this context
  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // Existing method from previous practicals, not used in this context
  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds : 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  // Existing method from previous practicals, not used in this context
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/LKLbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // These three async methods simulate operations that take 3 seconds
  // and return different integer values.
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  // Langkah 1: Add the returnFG() method to _FuturePageState
  // This method uses FutureGroup to run multiple Futures in parallel
  // and sums their results.
  void returnFG() {
    setState(() {
      result = 'Calculating with FutureGroup...'; // Show immediate feedback
    });
    FutureGroup<int> futureGroup = FutureGroup<int>();

    // Add all Futures to the FutureGroup
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());

    // Close the FutureGroup to indicate no more Futures will be added.
    futureGroup.close();

    // Listen for the completion of all Futures in the group.
    // The .future getter of FutureGroup returns a Future<List<T>>
    // which completes when all added Futures complete.
    futureGroup.future.then(((List<int> value) {
      int total = 0;
      // Sum the results from all completed Futures
      for (var element in value) {
        total += element;
      }
      // Update the UI with the total sum
      setState(() {
        result = total.toString();
      });
    })).catchError((e) {
      // Handle any errors that might occur during the FutureGroup execution
      setState(() {
        result = 'Error: ${e.toString()}';
      });
    });
  }

  // The 'count' method from previous practical,
  // currently not used in favor of returnFG() for Soal 7.
  Future<void> count() async {
    setState(() {
      result = 'Calculating sequentially...';
    });
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
        title: const Text('Soal 7 - Faqih'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            // Langkah 2: Call the returnFG() method when the button is pressed.
            onPressed: () {
              returnFG();
              // Original onPressed code (from previous practicals) is commented out.
              // getNumber().then((value) {
              //   setState(() {
              //     result = value.toString();
              //   });
              // }).catchError((e) {
              //   result = 'An error occurred';
              // });
            },
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          // Display CircularProgressIndicator while calculation is in progress
          result.startsWith('Calculating') ? const CircularProgressIndicator() : Container(),
          const Spacer(),
        ]),
      ),
    );
  }
}
