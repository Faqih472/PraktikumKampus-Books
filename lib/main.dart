import 'dart:async';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'geolocation.dart';
import 'navigation_first.dart';

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
      home: const NavigationFirst(),

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

  // This method uses Future.wait to run multiple Futures in parallel
  // and sums their results.
  Future<void> returnFG() async {
    setState(() {
      result = 'Calculating with Future.wait...'; // Show immediate feedback
    });

    try {
      // Use Future.wait to run all three Futures concurrently.
      // It returns a Future<List<int>> which completes when all its
      // constituent Futures have completed.
      final List<int> values = await Future.wait<int>([
        returnOneAsync(),
        returnTwoAsync(),
        returnThreeAsync(),
      ]);

      int total = 0;
      // Sum the results from all completed Futures
      for (var element in values) {
        total += element;
      }

      // Update the UI with the total sum
      setState(() {
        result = total.toString();
      });
    } catch (e) {
      // Handle any errors that might occur during the Future.wait execution
      setState(() {
        result = 'Error: ${e.toString()}';
      });
    }
  }

  // This method demonstrates sequential execution, not used by the GO! button in your current code.
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

  // Langkah 1: Add the returnError() method to _FuturePageState
  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  // Langkah 4 for Soal 12: Add the handleError() method
  Future handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      print('Complete');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 12 - Faqih'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            // Langkah 2: Replace onPressed to call returnError() and handle it
            onPressed: () {
              setState(() {
                // Clear result and hide indicator when button is pressed for new calculation
                result = '';
              });
              returnError()
                  .then((value) {
                setState(() {
                  result = 'Success';
                });
              }).catchError((onError) {
                setState(() {
                  result = onError.toString();
                });
              }).whenComplete(() => print('Complete'));
            },
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          // Display CircularProgressIndicator while result is empty (indicating it's waiting for async op)
          result.isEmpty ? const CircularProgressIndicator() : Container(),
          const Spacer(),
        ]),
      ),
    );
  }
}
