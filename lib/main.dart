import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:startup_namer/constants.dart';
import 'package:startup_namer/pages/pages.dart';

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
      initialRoute: calculatorRoute,
      routes: {
        initialRoute: (context) => MainScreen(),
        '/random_words': (context) => RandomWords(),
        '/my_widget': (context) => MyWidget(),
        '/test': (context) => TestWidget(),
        calculatorRoute: (context) => Calculator(title: 'Calculator'),
      },
      // onGenerateRoute: (settings) {

      // },
    );
  }
}
