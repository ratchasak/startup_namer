import 'package:get_it/get_it.dart';
import 'currency/currency_service.dart';
import 'currency/currency_service_implementation.dart';
import 'storage/storage_service.dart';
import 'storage/storage_service_implementation.dart';
import 'web_api/web_api.dart';
import 'web_api/web_api_implementation.dart';
import '../business_logic/view_models/calculate_screen_viewmodel.dart';
import '../business_logic/view_models/choose_favorites_viewmodel.dart';
import '../business_logic/view_models/album_list_viewmodel.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // services
  serviceLocator.registerLazySingleton<WebApi>(() => WebApiImpl());
  serviceLocator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  serviceLocator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());

  // You can replace the actual services above with fake implementations during development.
  //
  // serviceLocator.registerLazySingleton<WebApi>(() => FakeWebApi());
  // serviceLocator.registerLazySingleton<StorageService>(() => FakeStorageService());
  // serviceLocator.registerLazySingleton<CurrencyService>(() => CurrencyServiceFake());

  // view models
  serviceLocator.registerFactory<CalculateScreenViewModel>(() => CalculateScreenViewModel());
  serviceLocator.registerFactory<ChooseFavoritesViewModel>(() => ChooseFavoritesViewModel());
  serviceLocator.registerFactory<AlbumListViewModel>(() => AlbumListViewModel());
}
