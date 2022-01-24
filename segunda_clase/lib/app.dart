import 'package:flutter/material.dart';
import 'package:segunda_clase/home.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
        theme: theme.copyWith(
            colorScheme: theme.colorScheme
                .copyWith(primary: Colors.grey, secondary: Colors.black)),
        title: 'Esto es una app de recetas',
        home: const HomePage(title: 'RecetasApp'));
  }
}
