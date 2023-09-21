import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de Widgets',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //       'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Text('Menú Lateral'),
                    Text('Menú Lateral'),
                    Text('Menú Lateral'),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Opción 1'),
                onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
              ListTile(
                title: const Text('Opción 2'),
                onTap: () {
                  // Acción cuando se selecciona la opción 2
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Ejemplo de Widgets'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ejemplo de Texto',
                style: TextStyle(fontSize: 24.0),
              ),
              Image.network(
                'https://via.placeholder.com/250',
                width: 150.0,
                height: 150.0,
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                //diferencia entre padding y margin
                child: const Text(
                  'Ejemplo de Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('Botón 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Botón 2'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Botón 3'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
              ),
              AppBar(
                title: const Text('Barra de Aplicación 2'),
              ),
              const TextField(
                // maxLength: 12,
                // keyboardAppearance: Brightness.dark,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ingrese un texto',
                ),
              ),
              AlertDialog(
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
              ),
              const Card(
                elevation: 4.0,
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Usuario Ejemplo',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          // color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Correo: usuario@example.com',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'Teléfono: +1 123-456-7890',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
              // const DefaultTabController(
              //   length: 3,
              //   child: Column(
              //     children: <Widget>[
              //       TabBar(
              //         tabs: <Widget>[
              //           Tab(text: 'Tab 1'),
              //           Tab(text: 'Tab 2'),
              //           Tab(text: 'Tab 3'),
              //         ],
              //       ),
              //       TabBarView(
              //         children: <Widget>[
              //           Center(child: Text('Contenido de Tab 1')),
              //           Center(child: Text('Contenido de Tab 2')),
              //           Center(child: Text('Contenido de Tab 3')),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              BottomNavigationBar(
                // currentIndex: 1,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Inicio',
                    // tooltip: 'Inicio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Buscar',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Perfil',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
