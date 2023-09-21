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
          title: const Text('Reto 1'),
        ),
        body: Center(
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    'https://images-gmi-pmc.edge-generalmills.com/80b0b42f-e180-4321-a130-b16b55dcc5ba.jpg'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                child: const Text('Strawberry Pavlova'),
              ),
              const Text(
                  'Dolore et ullamco est culpa cupidatat velit dolore laborum duis. Culpa esse eu qui ullamco culpa. Laboris laboris qui incididunt labore dolore. Aute Lorem officia ad tempor tempor laboris sint laborum nostrud irure occaecat eiusmod laborum. Cupidatat anim anim eiusmod voluptate sint ea. Fugiat ad nostrud labore aliquip minim cillum officia eu.'),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Text('170 reviews'),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('mint'),
                      Text('Mint')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.abc_sharp),
                      Text('ANYTHING'),
                      Text('Something')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.account_box),
                      Text('AAA'),
                      Text('BBBBB')
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
