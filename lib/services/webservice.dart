import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/album.dart';

class Webservice {
  Future<List<Album>> fetchAlbum() async {
    final apiUrl = 'https://jsonplaceholder.typicode.com/albums';
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json =  body;
      return json.map((album) => Album.fromJson(album)).toList();   
    } else {
      throw Exception('Unable to perform request!');
    }
  }
}
