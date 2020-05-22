import 'package:get_it/get_it.dart';

import 'package:startup_namer/storage_service_fake.dart';
import 'package:startup_namer/storage_service.dart';

GetIt getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<StorageService>(() => StorageServiceFake());
}
