import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practice for test'),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'I am a big title',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'I am a medium subtitle',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'I am a normal text',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(title: const Text('Option #1'), onTap: () {}),
              ListTile(title: const Text('Option #2'), onTap: () {}),
              ListTile(title: const Text('Option #3'), onTap: () {}),
              ListTile(title: const Text('Option #4'), onTap: () {}),
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 25.0, width: 100.0, color: Colors.amber),
                        Container(
                            height: 25.0, width: 100.0, color: Colors.blue),
                        Container(
                            height: 25.0, width: 100.0, color: Colors.red),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0, left: 20.0),
                    child: Text(
                        'Voluptate voluptate qui ipsum amet qui nisi pariatur. Ex ex anim in minim minim adipisicing aute exercitation ipsum sunt qui pariatur quis exercitation. Proident qui adipisicing aute consectetur. In ullamco deserunt dolore aliquip esse qui proident duis elit laborum ad. Excepteur pariatur sit elit nulla quis adipisicing sunt incididunt in laborum proident veniam. Amet voluptate enim est magna aute nostrud adipisicing nulla non aliqua. Minim velit in id quis occaecat consectetur duis enim ut laboris excepteur amet.'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_alarm_sharp),
                        Icon(Icons.key),
                        Icon(Icons.add_a_photo_outlined),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width) / 3,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.green),
                          child: const Text('Select Alarm'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: (MediaQuery.of(context).size.width) / 3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.greenAccent),
                          onPressed: () {},
                          child: const Text('Select Key'),
                        ),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width) / 3,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.green),
                          child: const Text('Select camera'),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Element #$index'),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: const Text(
                        'Incididunt ut ipsum dolor elit ipsum magna duis tempor dolore est adipisicing irure consequat. Ex reprehenderit cupidatat nulla sunt consequat laboris cupidatat in culpa adipisicing qui ut incididunt Lorem. Officia Lorem duis fugiat duis cupidatat qui dolor anim aute nulla non labore. Ad mollit anim duis eu eiusmod pariatur ut fugiat sint ipsum cupidatat eu aliqua. Duis aute adipisicing aute duis non sint laboris laborum non tempor. In cupidatat amet nostrud sit consectetur officia commodo ullamco veniam ullamco deserunt. Voluptate dolore in enim elit amet do duis exercitation ex magna.'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'END OF APLICATION',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 28.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
