import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 🍔',
                style: GoogleFonts.actor(
                  fontSize: 31,
                ))),
      body: Center(child: 
        Text('Comidas 🥗!',
                style: GoogleFonts.actor(
                  fontSize: 31,
                ))),
      
    );
  }
}
