import 'package:flutter/material.dart';
import '../screens/calculator.dart';
import '../screens/cart.dart';
import '../screens/catalog.dart';
import '../screens/login.dart';
import '../screens/main_screen.dart';
import '../screens/networking.dart';
import '../screens/random_words.dart';
import '../screens/shared_preferences.dart';
import '../screens/test_widget.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case initialRoute:
      return MaterialPageRoute(
        builder: (_) => MainScreen(),
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
    case sharedPreferencesRoute:
      return MaterialPageRoute(
        builder: (_) => SharedPreferences(),
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
