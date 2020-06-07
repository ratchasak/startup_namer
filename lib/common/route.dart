// https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
// https://medium.com/flutter-community/clean-navigation-in-flutter-using-generated-routes-891bd6e000df
import 'package:flutter/material.dart';
import '../screens/calculator.dart';
import '../screens/cart.dart';
import '../screens/catalog.dart';
import '../screens/login.dart';
import '../screens/my_home_page.dart';
import '../screens/networking.dart';
import '../screens/random_words.dart';
import '../screens/test_widget.dart';

const String initialRoute = '/';
const String randomRoute = '/random_words';
const String myRoute = '/my_widget';
const String testRoute = '/test';
const String calculatorRoute = '/calculator';
const String providerRoute = '/provider';
const String loginRoute = '/login';
const String catalogRoute = '/catalog';
const String cartRoute = '/cart';
const String networkingRoute = '/networking';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case initialRoute:
      return MaterialPageRoute(
        builder: (_) => MyHomePage(),
      );
      break;
    case randomRoute:
      return MaterialPageRoute(
        builder: (_) => RandomWords(),
      );
      break;
    case testRoute:
      return MaterialPageRoute(
        builder: (_) => TestWidget(),
      );
      break;
    case calculatorRoute:
      return MaterialPageRoute(
        builder: (_) => Calculator(title: 'Calculator'),
      );
      break;
    case loginRoute:
      return MaterialPageRoute(
        builder: (_) => LoginScreen(),
      );
      break;
    case catalogRoute:
      return MaterialPageRoute(
        builder: (_) => CatalogScreen(),
      );
      break;
    case cartRoute:
      return MaterialPageRoute(
        builder: (_) => CartScreen(),
      );
      break;
    case networkingRoute:
      return MaterialPageRoute(
        builder: (_) => Networking(),
      );
      break;
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
      break;
  }
}
