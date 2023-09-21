import 'package:flutter/material.dart';

class DemoAlertDialog extends StatelessWidget {
  const DemoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Diálogo de ejemplo'),
      content: const Text('Este es un cuadro de diálogo de ejemplo.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}
