import 'package:flutter/material.dart';
import 'package:sexta_clase/home.dart';

class ExampleNavigateApp extends StatelessWidget {
  const ExampleNavigateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación para explicar navegacion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
