import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../element_tile.dart';

class NestedListViews extends StatelessWidget {
  const NestedListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo Listas anidadas 🪆🧩'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(color: Colors.black87),    
                      child: Center(child: Text('Este es el ejemplo de una lista anidada', style: GoogleFonts.adventPro(fontSize: 21, color: Colors.white, fontWeight: FontWeight.w700),))),
                  
                  ElementTile(currentNumber: 2),
                  ElementTile(currentNumber: 3),
                  ElementTile(currentNumber: 5),
                  ElementTile(currentNumber: 8),
                  ElementTile(currentNumber: 13),
                  ElementTile(currentNumber: 21),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ElementTile(currentNumber: index)))
        ],
      ),
      bottomNavigationBar: Container(
          height: 233,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Cuando tengas listas anidadas como en este escenario '
              'es mejor recurrir al CustomScrollView y  '
              'Apoyarse del SliverList para dibujar la lista infinita '
              'o de un tamaño superior a 10 para no afectar el '
              'performace de tu aplicación',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
