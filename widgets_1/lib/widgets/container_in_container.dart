import 'package:flutter/material.dart';

class ContainerInContainer extends StatelessWidget {
  const ContainerInContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(123, 1, 236, 1),
      margin: const EdgeInsets.all(32),
      child: Container(
        color: Colors.amber,
        margin: const EdgeInsets.all(12),
        child: Container(
          color: Colors.red,
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 50),
        ),
      ),
    );
  }
}
