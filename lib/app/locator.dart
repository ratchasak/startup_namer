import 'package:get_it/get_it.dart';
import '../services/api.dart';
import '../services/posts_service.dart';
import '../services/currency/currency_service.dart';
import '../services/currency/currency_service_implementation.dart';
import '../services/storage/storage_service.dart';
import '../services/storage/storage_service_implementation.dart';
import '../services/web_api/web_api.dart';
import '../services/web_api/web_api_implementation.dart';
import '../ui/views/my_home_page/my_home_page_viewmodel.dart';
import '../ui/views/mvvm/mvvm_viewmodel.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Api>(() => Api());
  locator.registerLazySingleton<PostsService>(() => PostsService());
  locator.registerLazySingleton<WebApi>(() => WebApiImpl());
  locator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  locator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());

  locator.registerFactory<MyHomePageViewModel>(() => MyHomePageViewModel());
  locator.registerFactory<MvvmViewModel>(() => MvvmViewModel());
}
