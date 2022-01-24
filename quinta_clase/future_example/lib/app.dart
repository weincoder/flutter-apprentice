import 'package:flutter/material.dart';

import 'home.dart';




class FutureExample extends StatelessWidget {
  const FutureExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),

    );
  }
}