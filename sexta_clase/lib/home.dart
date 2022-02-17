import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sexta_clase/app_routes.dart';
import 'package:sexta_clase/models/cat.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Navegación 🚢', style: GoogleFonts.actor(fontSize:34),)),
      body: Center(
        
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.cat, arguments: Cat('Soy otro titulo', 'Soy el contenido')), child: 
            Text ('IR A PAGINA 🐈', style: GoogleFonts.actor(fontSize: 34),)
          ),
          const SizedBox(height: 21),
          ElevatedButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.food), child: 
            Text ('IR A PAGINA 🍔',style: GoogleFonts.actor(fontSize: 34))
          ),
        ],),
      ),
    );
  }
}