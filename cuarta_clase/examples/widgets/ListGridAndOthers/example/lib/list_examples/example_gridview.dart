import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../element_tile.dart';

class ExampleGridView extends StatelessWidget {
  const ExampleGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo GridView Builder 🥅🧱'),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) => ElementTile(currentNumber: index),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3),
      ),
      bottomNavigationBar: Container(
          height: 144,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Este constructor lo puedes utilizar '
              'para listas infinitas e infinitas ' 
              'sirve mucho cuando estes mostrando una lista de listas, '
              'eso si siempre y cuando no '
              'sean listas anidadas',
              style: GoogleFonts.actor(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
