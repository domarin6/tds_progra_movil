import 'package:flutter/material.dart';
import 'package:navegation_app/presentation/widgets/demo_alert_dialog.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const DemoAlertDialog(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Anterior pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}
