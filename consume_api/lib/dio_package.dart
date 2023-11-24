import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioPackage extends StatefulWidget {
  const DioPackage({super.key});

  @override
  _DioPackageState createState() => _DioPackageState();
}

class _DioPackageState extends State<DioPackage> {
  int _id = 0;
  String _name = '';
  String _temperament = '';
  // String _breed = '';
  // String _url = '';

  Future<void> getCat() async {
    // create instance of dio package
    Dio dio = Dio();
    Response response =
        await dio.get('https://api.thecatapi.com/v1/breeds?limit=1&page=0');

    setState(() {
      _id = response.data['id'];
      _name = response.data['name'];
      _temperament = response.data['temperament'];
      // _breed = response.data['breed'];
      // _url = response.data['url'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cat API'),
        ),
        body: Center(
          child: FutureBuilder(
            future: getCat(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ID: $_id'),
                    Text('Nombre: $_name'),
                    Text('Temperamento: $_temperament'),
                    // Text('Raza: $_breed'),
                    // Image.network(_url),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
