import 'package:stacked/stacked.dart';

import 'package:startup_namer/service_locator.dart';
import 'package:startup_namer/storage_service.dart';

class CounterViewModel extends BaseViewModel {
  int _counter = 0;
  int get counter => _counter;

  StorageService _storageService = locator<StorageService>();

  Future loadData() async {
    _counter = await _storageService.getCounterValue();
    notifyListeners();
  }

  void increment() {
    _counter++;
    _storageService.saveCounterValue(_counter);
    notifyListeners();
  }
}
