
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo FutureBuilder'),
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
              future: asyncsum(2, 4),
              builder: (context, snapshot){
                Widget resultadoSuma = Container();
                if (snapshot.connectionState == ConnectionState.waiting){
                  resultadoSuma = const CircularProgressIndicator();
                }else if (snapshot.connectionState == ConnectionState.done){
                  resultadoSuma= Text (snapshot.data.toString(), style: GoogleFonts.actor(fontSize: 34),);
                }
                return resultadoSuma;
              } )
          ],
        ),
      ),
    );
  }
}

Future<int> asyncsum (int a, int b) async{
  await Future.delayed(const Duration(milliseconds: 3500));
  return a +b;
}