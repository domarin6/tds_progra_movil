import 'package:flutter/material.dart';

class DemoTextField extends StatelessWidget {
  const DemoTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLength: 12,
      keyboardAppearance: Brightness.dark,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Ingrese un texto',
      ),
    );
  }
}
