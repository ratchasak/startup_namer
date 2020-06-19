import 'package:shared_preferences/shared_preferences.dart';
import 'package:startup_namer/services/storage/shared_preferences_util.dart';

class SharedPreferencesService implements LocalStorageService {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // int counter = (prefs.getInt('counter') ?? 0) + 1;
  // print('Pressed $counter times.');
  // await prefs.setInt('counter', counter);
  SharedPreferences _prefs;
}