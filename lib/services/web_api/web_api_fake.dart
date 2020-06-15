import 'dart:convert';
import 'package:http/http.dart' as http;
import 'web_api.dart';
import '../../models/album.dart';
import '../../models/rate.dart';

const String apiUrl = 'https://jsonplaceholder.typicode.com/todos/1';

class FakeWebApi implements WebApi {
  @override
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

  @override
  Future<List<Rate>> fetchExchangeRates() async {
    List<Rate> list = [];
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'EUR',
      exchangeRate: 0.91,
    ));
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'CNY',
      exchangeRate: 7.05,
    ));
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'MNT',
      exchangeRate: 2668.37,
    ));
    return list;
  }
}
