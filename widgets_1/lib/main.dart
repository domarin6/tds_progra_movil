import 'package:flutter/material.dart';

import 'pages/menu_strawberry.dart';

// import 'widgets/container_in_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Testing widgets')),
        body: const MenuStrawberry(),
      ),
    );
  }
}
