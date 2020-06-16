import 'package:startup_namer/models/album.dart';
import 'package:startup_namer/models/rate.dart';

abstract class WebApi {
  Future<List<Album>> fetchAlbum();
  Future<List<Rate>> fetchExchangeRates();
}
