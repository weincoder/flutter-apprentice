import 'package:flutter/material.dart';
import 'package:septima_clase/pages/common/album_tile.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo peticiones HTTP',style: TextStyle(fontSize: 24.0)),),
      body:  Center(child: Column(
        children: const [
          Text('Comencemos🔨', style: TextStyle(fontSize: 34.0),),
          AlbumTile(url: "https://via.placeholder.com/600/8f209a", title: "iusto sunt nobis quasi veritatis quas expedita voluptatum deserunt", id: "24")
        ],
      ),),
    );
  }
}