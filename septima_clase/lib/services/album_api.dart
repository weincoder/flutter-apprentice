import 'package:http/http.dart' as http;
import 'package:septima_clase/models/album.dart';
class AlbumApi {
  Future<List<Album>> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/'));

  if (response.statusCode == 200) {
    return albumFromJson(response.body);
  } else {
    throw AlbumException();
  }
}
}
class AlbumException implements Exception {
  @override
  String toString() {
    return 'Error al obtener la lista de Albums';
  }
}