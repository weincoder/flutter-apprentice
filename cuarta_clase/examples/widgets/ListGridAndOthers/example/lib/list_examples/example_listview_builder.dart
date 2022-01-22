import 'package:example/element_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleListViewBuilder extends StatelessWidget {
  const ExampleListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo ListView Builder 🔨'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => ElementTile(currentNumber: index)),
      bottomNavigationBar: Container(
          height: 144,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Este constructor lo puedes utilizar '
              'para listas infinitas eso si siempre y cuando no '
              'sean listas anidadas',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
