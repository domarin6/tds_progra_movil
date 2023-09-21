import 'package:flutter/material.dart';

class InfoMenu extends StatelessWidget {
  const InfoMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.bookmark),
            Text('PREP: '),
            Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer_sharp),
            Text('COOK: '),
            Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.food_bank_rounded),
            Text('FEEDS: '),
            Text('4 - 6'),
          ],
        ),
      ],
    );
  }
}
