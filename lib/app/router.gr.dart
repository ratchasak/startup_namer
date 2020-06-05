// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:startup_namer/ui/views/main_screen/main_screen.dart';
import 'package:startup_namer/ui/views/random_words/random_words.dart';
import 'package:startup_namer/ui/views/test_widget/test_widget.dart';
import 'package:startup_namer/ui/views/calculator/calculator.dart';
import 'package:startup_namer/ui/views/login/login.dart';
import 'package:startup_namer/ui/views/catalog_screen/catalog.dart';
import 'package:startup_namer/ui/views/cart_screen/cart.dart';
import 'package:startup_namer/ui/views/networking/networking.dart';
import 'package:startup_namer/ui/views/share_preferences/shared_preferences.dart';

abstract class Routes {
  static const initialRoute = '/';
  static const randomRoute = '/random-route';
  static const testRoute = '/test-route';
  static const calculatorRoute = '/calculator-route';
  static const loginRoute = '/login-route';
  static const catalogRoute = '/catalog-route';
  static const cartRoute = '/cart-route';
  static const networkingRoute = '/networking-route';
  static const sharedPreferencesRoute = '/shared-preferences-route';
  static const all = {
    initialRoute,
    randomRoute,
    testRoute,
    calculatorRoute,
    loginRoute,
    catalogRoute,
    cartRoute,
    networkingRoute,
    sharedPreferencesRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MainScreen(),
          settings: settings,
        );
      case Routes.randomRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => RandomWords(),
          settings: settings,
        );
      case Routes.testRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => TestWidget(),
          settings: settings,
        );
      case Routes.calculatorRoute:
        if (hasInvalidArgs<CalculatorArguments>(args)) {
          return misTypedArgsRoute<CalculatorArguments>(args);
        }
        final typedArgs = args as CalculatorArguments ?? CalculatorArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              Calculator(key: typedArgs.key, title: typedArgs.title),
          settings: settings,
        );
      case Routes.loginRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen(),
          settings: settings,
        );
      case Routes.catalogRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => CatalogScreen(),
          settings: settings,
        );
      case Routes.cartRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => CartScreen(),
          settings: settings,
        );
      case Routes.networkingRoute:
        if (hasInvalidArgs<NetworkingArguments>(args)) {
          return misTypedArgsRoute<NetworkingArguments>(args);
        }
        final typedArgs = args as NetworkingArguments ?? NetworkingArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => Networking(key: typedArgs.key),
          settings: settings,
        );
      case Routes.sharedPreferencesRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SharedPreferencesView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//Calculator arguments holder class
class CalculatorArguments {
  final Key key;
  final String title;
  CalculatorArguments({this.key, this.title});
}

//Networking arguments holder class
class NetworkingArguments {
  final Key key;
  NetworkingArguments({this.key});
}
