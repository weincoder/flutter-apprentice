import 'package:flutter/material.dart';
import 'package:septima_clase/models/album.dart';
import 'package:septima_clase/pages/common/album_tile.dart';
import 'package:septima_clase/services/album_api.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Future<List<Album>> albumList;

  @override
  void initState() {
    super.initState();
    final albumApi = AlbumApi();
    albumList = albumApi.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('🌎 peticiones HTTP',style: TextStyle(fontSize: 24.0)),),
      body:  FutureBuilder<List<Album>>(future: albumList ,builder: (_,snapshot){
        if (snapshot.hasData){
          return ListView.builder(itemBuilder: (_,index){
            Album album = snapshot.data![index];
            print(album);
            return AlbumTile(url: album.url, 
            title: album.title, id: album.id.toString());
          });
        }
        else if (snapshot.hasError){
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();

      }),
    );
  }
}