// https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
// https://medium.com/flutter-community/clean-navigation-in-flutter-using-generated-routes-891bd6e000df
import 'package:flutter/material.dart';

import 'package:startup_namer/common/constants.dart';
import 'package:startup_namer/screens/calculator.dart';
import 'package:startup_namer/screens/cart.dart';
import 'package:startup_namer/screens/catalog.dart';
import 'package:startup_namer/screens/login.dart';
import 'package:startup_namer/screens/main_screen.dart';
import 'package:startup_namer/screens/random_words.dart';
import 'package:startup_namer/screens/test_widget.dart';

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
