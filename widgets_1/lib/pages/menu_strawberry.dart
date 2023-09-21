import 'package:flutter/material.dart';

import '../widgets/info_menu.dart';

class MenuStrawberry extends StatelessWidget {
  const MenuStrawberry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://images-gmi-pmc.edge-generalmills.com/80b0b42f-e180-4321-a130-b16b55dcc5ba.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text('Strawberry Pavlova'),
            ),
            Text(
                'Voluptate ea officia consequat voluptate excepteur consectetur fugiat. Commodo et magna excepteur sint cillum pariatur labore elit cillum non elit dolore culpa ad. Eu reprehenderit ut eiusmod eu ut anim reprehenderit fugiat reprehenderit consectetur tempor.'),
            SizedBox(
              height: 12,
            ),
            Row(
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
            SizedBox(
              height: 22,
            ),
            InfoMenu(),
          ],
        ),
      ],
    );
  }
}
