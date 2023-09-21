import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example application'),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: const Text('Example application'),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              // margin: const EdgeInsets.all(12),
              height: 60,
              child: Container(
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: Colors.green,
              width: double.infinity,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
