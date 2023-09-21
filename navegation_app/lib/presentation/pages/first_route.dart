import 'package:flutter/material.dart';
import 'package:navegation_app/presentation/pages/second_route.dart';
import 'package:navegation_app/presentation/widgets/demo_bottom_navigation_bar.dart';
import 'package:navegation_app/presentation/widgets/demo_textfield.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const DemoTextField(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondRoute(),
                  ),
                );
              },
              child: const Text('Siguiente pantalla'),
            ),
            const DemoBottomNavegationBar(),
          ],
        ),
      ),
    );
  }
}
