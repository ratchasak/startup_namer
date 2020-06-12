import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'services/service_locator.dart';
import 'ui/views/calculator.dart';
import 'ui/views/cart.dart';
import 'ui/views/catalog.dart';
import 'ui/views/login.dart';
import 'ui/views/my_home_page.dart';
import 'ui/views/networking.dart';
import 'ui/views/random_words.dart';
import 'ui/views/test_widget.dart';
import 'ui/views/calculate_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

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
const String moolaxRoute = '/moolax';

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
    case moolaxRoute:
      return MaterialPageRoute(
        builder: (_) => CalculateCurrencyScreen(),
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

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        print('inactive');
        break;
      case AppLifecycleState.paused:
        print('paused');
        break;
      case AppLifecycleState.resumed:
        print('resumed');
        break;
      case AppLifecycleState.detached:
        print('detached');
        break;
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      // home: MyHomePage(),
      initialRoute: initialRoute,
      onGenerateRoute: generateRoute,
    );
  }
}
