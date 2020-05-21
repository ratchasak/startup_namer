// https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
// https://medium.com/flutter-community/clean-navigation-in-flutter-using-generated-routes-891bd6e000df
import 'package:flutter/material.dart';

import 'package:startup_namer/constants.dart';
import 'package:startup_namer/screens/screens.dart';

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
    case myRoute:
      return MaterialPageRoute(
        builder: (_) => MyWidget(),
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
    case providerRoute:
      return MaterialPageRoute(
        builder: (_) => ProviderScreen(),
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
