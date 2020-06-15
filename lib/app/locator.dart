import 'package:get_it/get_it.dart';
import '../services/posts_service.dart';
import '../services/currency/currency_service.dart';
import '../services/currency/currency_service_implementation.dart';
import '../services/storage/storage_service.dart';
import '../services/storage/storage_service_implementation.dart';
import '../services/web_api/web_api.dart';
import '../services/web_api/web_api_implementation.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<PostsService>(() => PostsService());
  locator.registerLazySingleton<WebApi>(() => WebApiImpl());
  locator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  locator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());
}
