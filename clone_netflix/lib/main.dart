// Importar la librería para los widgets

import 'package:clone_netflix/paginas/inicio.dart';
import 'package:flutter/material.dart';

//Ejecutar la App
// Pasarle el parametró del widget
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: InicioPage(),
    );
  }
}
