import 'package:auto_route/auto_route_annotations.dart';
import '../ui/views/share_preferences/shared_preferences.dart';
import '../ui/views/calculator/calculator.dart';
import '../ui/views/cart_screen/cart.dart';
import '../ui/views/catalog_screen/catalog.dart';
import '../ui/views/login/login.dart';
import '../ui/views/main_screen/main_screen.dart';
import '../ui/views/networking/networking.dart';
import '../ui/views/random_words/random_words.dart';
import '../ui/views/test_widget/test_widget.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  MainScreen initialRoute;
  RandomWords randomRoute;
  TestWidget testRoute;
  Calculator calculatorRoute;
  LoginScreen loginRoute;
  CatalogScreen catalogRoute;
  CartScreen cartRoute;
  Networking networkingRoute;
  SharedPreferencesView sharedPreferencesRoute;
}
