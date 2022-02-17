import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sexta_clase/models/cat.dart';

class CatPage extends StatelessWidget {
  final Cat cat;
  const CatPage({required this.cat,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('${cat.name} 🐈',
                style: GoogleFonts.actor(
                  fontSize: 31,
                ))),
        body: Center(
          child: Column(
            children: [
              Text(
                'El Gato con botas ${cat.contenido}',
                style: GoogleFonts.actor(fontSize: 31),
              )
            ],
          ),
        ));
  }
}
