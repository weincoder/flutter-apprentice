import 'package:flutter/material.dart';
import 'package:sexta_clase/app_routes.dart';
import 'package:sexta_clase/cat.dart';
import 'package:sexta_clase/food.dart';
import 'package:sexta_clase/home.dart';

import 'models/cat.dart';

class ExampleNavigateApp extends StatelessWidget {
  const ExampleNavigateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación para explicar navegacion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: {
      //   AppRoutes.home: (context) => const Home(),
      //   AppRoutes.cat: (context) => const CatPage(),
      //   AppRoutes.food: (context) => const FoodPage()

      // },
      onGenerateRoute: (settings) {
        switch (settings.name){
          case (AppRoutes.cat):
            final Cat _cat = settings.arguments as Cat;
            return MaterialPageRoute(builder: (builder)=> CatPage(cat: _cat));
          case(AppRoutes.food):
            return MaterialPageRoute(builder: (builder)=> const FoodPage());
          default:
            return MaterialPageRoute(builder: (builder)=> const Home());
        }

      },
    );
  }
}
