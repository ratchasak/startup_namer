import 'package:get_it/get_it.dart';
import 'package:startup_namer/services/api.dart';
import 'package:startup_namer/services/posts_service.dart';
import 'package:startup_namer/services/currency/currency_service.dart';
import 'package:startup_namer/services/currency/currency_service_implementation.dart';
import 'package:startup_namer/services/storage/storage_service.dart';
import 'package:startup_namer/services/storage/storage_service_implementation.dart';
import 'package:startup_namer/services/web_api/web_api.dart';
import 'package:startup_namer/services/web_api/web_api_implementation.dart';
import 'package:startup_namer/screens/album_list_viewmodel.dart';
import 'package:startup_namer/screens/my_home_page/my_home_page_viewmodel.dart';
import 'package:startup_namer/screens/mvvm/mvvm_viewmodel.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Api>(() => Api());
  locator.registerLazySingleton<PostsService>(() => PostsService());
  locator.registerLazySingleton<WebApi>(() => WebApiImpl());
  locator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  locator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());

  locator.registerFactory<MyHomePageViewModel>(() => MyHomePageViewModel());
  locator.registerFactory<MvvmViewModel>(() => MvvmViewModel());
  locator.registerFactory<AlbumListViewModel>(() => AlbumListViewModel());
}
