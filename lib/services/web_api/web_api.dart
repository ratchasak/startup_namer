import '../../datamodels/album.dart';
import '../../datamodels/rate.dart';

abstract class WebApi {
  Future<List<Album>> fetchAlbum();
  Future<List<Rate>> fetchExchangeRates();
}
