import '../../business_logic/models/album.dart';
import '../../business_logic/models/rate.dart';

abstract class WebApi {
  Future<List<Album>> fetchAlbum();
  Future<List<Rate>> fetchExchangeRates();
}
