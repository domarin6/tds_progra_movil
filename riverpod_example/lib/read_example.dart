// Ejemplo de .read()
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeProvider = Provider((_) => DateTime.now());

class ReadExample extends ConsumerWidget {
  const ReadExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.read(timeProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text(time.toString()),
        ),
      ),
    );
  }
}
