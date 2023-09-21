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
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Column(
                    children: [
                      Text('Small Title', style: TextStyle(fontSize: 12)),
                      Text('Medium Title', style: TextStyle(fontSize: 18)),
                      Text('Big Title',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
              ListTile(title: const Text('Option #1'), onTap: () {}),
              ListTile(title: const Text('Option #2'), onTap: () {}),
              ListTile(title: const Text('Option #3'), onTap: () {}),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Test mobile app'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  height: 32,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                Container(
                  height: 32,
                  width: 250,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  height: 32,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: const Text(
                  'Veniam excepteur eu deserunt sint dolore adipisicing nisi tempor. Nisi veniam incididunt magna nisi do commodo. Irure ad officia excepteur commodo exercitation adipisicing ullamco dolore. Magna ad duis et proident commodo ut proident irure tempor dolore consectetur consequat exercitation. Sit fugiat eiusmod enim deserunt nulla minim sint quis aliqua excepteur et tempor laboris. Ipsum amet mollit quis nisi nisi ipsum dolor ipsum cupidatat officia anim irure.Fugiat reprehenderit elit elit commodo nisi. Enim Lorem est qui cupidatat exercitation mollit fugiat sunt deserunt fugiat labore irure ipsum excepteur. Enim laborum aliquip labore in proident aliqua. Et aliqua nostrud tempor officia eu velit ut ullamco elit aliqua.'),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.green,
                  height: 32,
                  width: 80,
                  child: const Icon(Icons.android),
                ),
                Container(
                  color: Colors.blue,
                  height: 32,
                  width: 80,
                  child: const Icon(Icons.apple),
                ),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 30, left: 150, right: 150, bottom: 30),
              child: Text(
                  'Magna fugiat ipsum ut quis consectetur mollit laboris ea pariatur irure pariatur.'),
            ),
            const Center(
              child: Text(
                'End of app',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
