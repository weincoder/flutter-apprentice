import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          ElevatedButton(onPressed: (){}, child: 
            Text ('IR A PAGINA 🐈', style: GoogleFonts.actor(fontSize: 34),)
          ),
          const SizedBox(height: 21),
          ElevatedButton(onPressed: (){}, child: 
            Text ('IR A PAGINA 🍔',style: GoogleFonts.actor(fontSize: 34))
          ),
        ],),
      ),
    );
  }
}