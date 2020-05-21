import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:startup_namer/constants.dart';
import 'package:startup_namer/router.dart' as router;
import 'package:startup_namer/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => CartModel()),
    //     Provider(create: (context) => SomeOtherClass()),
    //   ],
    //   child: MyApp(),
    // ),
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: initialRoute,
      onGenerateRoute: router.generateRoute,
    );
  }
}
