import 'package:flutter/material.dart';

class NormalListView extends StatelessWidget {
  const NormalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LIST VIEW NORMAL'),),
      body: 
        ListView(
          //Descomenta la linea de abajo para verlo horizontal
          //scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: const [
          Text('Gracias por seguir activo con los contenidos 📕'),
          SizedBox(height: 377,width: 377,),
          Text('Esta es la lista que debes usar con pocos elementos'),
          SizedBox(height: 377,width: 377,),
          Text('Recuerda que este constructor construye todos los elementos antes de dibujar'),
        ],)
      
    );
  }
}