import 'package:flutter/material.dart';
import 'app/locator.dart';
import 'app/router.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      // theme: ThemeData(
      //   primarySwatch: Colors.yellow,
      //   textTheme: TextTheme(
      //     headline1: TextStyle(
      //       fontFamily: 'Corben',
      //       fontWeight: FontWeight.w700,
      //       fontSize: 24,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      // home: MyHomePage(),
      initialRoute: Routes.initialRoute,
      onGenerateRoute: Router().generateRoute,
    );
  }
}
