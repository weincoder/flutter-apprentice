import 'package:example_provider/cat_provider.dart';
import 'package:example_provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerUser = Provider.of<UserProvider>(context);
    final providerCat = Provider.of<CatProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Primera página'),),
      body: Column(
        children: [
          Text('Información del Provider ${providerUser.name} ', style: GoogleFonts.actor(fontSize: 24),),
          ElevatedButton(onPressed: (){
            providerUser.name = 'Weincoders';
            providerCat.name = 'Lior';
          }, child: Text('actualiar info user', style: GoogleFonts.adventPro(fontSize: 24),))
        ],
      ),

    );
  }
}