import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:startup_namer/constants.dart';
import 'package:startup_namer/routes.dart';

void main() {
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
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
