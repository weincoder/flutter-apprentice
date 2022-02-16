import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatPage extends StatelessWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Página 🐈',
                style: GoogleFonts.actor(
                  fontSize: 31,
                ))),
        body: Center(
          child: Column(
            children: [
              Text(
                'El Gato con botas',
                style: GoogleFonts.actor(fontSize: 31),
              )
            ],
          ),
        ));
  }
}
