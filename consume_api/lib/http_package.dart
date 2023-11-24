import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HttpPackage extends StatefulWidget {
  const HttpPackage({super.key});

  @override
  _HttpPackageState createState() => _HttpPackageState();
}

class _HttpPackageState extends State<HttpPackage> {
  String _name = '';
  int _id = 0;
  int _height = 0;
  String _image = '';

  @override
  void initState() {
    super.initState();

    // Hacemos una petición GET a la API PokeAPI para obtener la información de un Pokémon específico
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/150');
    http.get(url).then((response) {
      if (response.statusCode == 200) {
        // Parseamos la respuesta JSON
        var json = jsonDecode(response.body);

        // Actualizamos los valores de las variables
        _name = json['name'];
        _id = json['id'];
        _height = json['height'];
        _image = json['sprites']['front_default'];

        // Actualizamos el estado de la interfaz de usuario
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémon Pokedex'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre: $_name'),
            Text('ID: ${_id.toString()}'),
            Text('Altura: ${_height.toString()}'),
            Image.network(
              _image,
              scale: 0.8,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
