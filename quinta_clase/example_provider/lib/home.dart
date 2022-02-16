import 'dart:developer';

import 'package:example_provider/cat_provider.dart';
import 'package:example_provider/page_one.dart';
import 'package:example_provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.indigo,
              child: Text(
                'Ir a primera pantalla',
                style: GoogleFonts.laila(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const PageOne())),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            Consumer<UserProvider>(builder: (context, user,_) { 
              return Text(user.name);}),
            Consumer<CatProvider>(builder: (context, user,_) => Text(user.name))
          ],
        ),
      ),
    );
  }
}
