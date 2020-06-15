import '../../models/album.dart';
import '../../models/rate.dart';

abstract class WebApi {
  Future<List<Album>> fetchAlbum();
  Future<List<Rate>> fetchExchangeRates();
}
