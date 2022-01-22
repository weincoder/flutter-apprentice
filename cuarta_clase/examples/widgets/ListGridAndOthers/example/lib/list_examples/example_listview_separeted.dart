import 'package:example/element_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleListViewSepareted extends StatelessWidget {
  const ExampleListViewSepareted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo ListView Builder 🔨'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ElementTile(currentNumber: index),
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) => Container(
          decoration: const BoxDecoration(color: Colors.black),
          height: 8,
          width: 8,
        ),
      ),
      bottomNavigationBar: Container(
          height: 144,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Este constructor lo puedes utilizar '
              'para listas finitas en las que desees un elemento '
              'separador entre los elementos de la lista',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
