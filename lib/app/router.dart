import 'package:flutter/material.dart';
import 'package:startup_namer/screens/my_home_page/my_home_page.dart';
import 'package:startup_namer/screens/mvvm//mvvm_view.dart';
import 'package:startup_namer/screens/calculator.dart';
import 'package:startup_namer/screens/cart.dart';
import 'package:startup_namer/screens/catalog.dart';
import 'package:startup_namer/screens/login.dart';
import 'package:startup_namer/screens/networking.dart';
import 'package:startup_namer/screens/random_words.dart';
import 'package:startup_namer/screens/test_widget.dart';
import 'package:startup_namer/screens/calculate_screen.dart';

abstract class Routes {
  static const initialRoute = '/';
  static const randomRoute = '/random_words';
  static const myRoute = '/my_widget';
  static const testRoute = '/test';
  static const calculatorRoute = '/calculator';
  static const providerRoute = '/provider';
  static const mvvmRoute = '/mvvm';
  static const loginRoute = '/login';
  static const catalogRoute = '/catalog';
  static const cartRoute = '/cart';
  static const networkingRoute = '/networking';
  static const moolaxRoute = '/moolax';
}

class Router {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => MyHomePage(),
        );
        break;
      case Routes.randomRoute:
        return MaterialPageRoute(
          builder: (_) => RandomWords(),
        );
        break;
      case Routes.testRoute:
        return MaterialPageRoute(
          builder: (_) => TestWidget(),
        );
        break;
      case Routes.calculatorRoute:
        return MaterialPageRoute(
          builder: (_) => Calculator(title: 'Calculator'),
        );
        break;
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
        break;
      case Routes.catalogRoute:
        return MaterialPageRoute(
          builder: (_) => CatalogScreen(),
        );
        break;
      case Routes.cartRoute:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
        break;
      case Routes.networkingRoute:
        return MaterialPageRoute(
          builder: (_) => Networking(),
        );
        break;
      case Routes.moolaxRoute:
        return MaterialPageRoute(
          builder: (_) => CalculateCurrencyScreen(),
        );
        break;
      case Routes.mvvmRoute:
        return MaterialPageRoute(
          builder: (_) => MvvmView(),
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
}
