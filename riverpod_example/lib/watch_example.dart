import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Ejemplo de .watch()
final usersProvider = Provider((_) => [
      User(id: 1, name: 'John Doe'),
      User(id: 2, name: 'Jane Doe'),
    ]);

class WatchExample extends ConsumerWidget {
  const WatchExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);

    users.add(User(id: 3, name: 'Michael Doe'));
    users.add(User(id: 3, name: 'Jose Doe'));
    users.add(User(id: 3, name: 'Jose dsakjbds'));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].name),
              );
            },
          ),
        ),
      ),
    );
  }
}

class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
