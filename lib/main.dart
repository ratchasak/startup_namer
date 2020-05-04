import 'package:flutter/material.dart';

import 'package:startup_namer/ui/screens/screens.dart';

void main() {
  runApp(MyApp());
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
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/random_words': (context) => RandomWords(),
        '/my_widget': (context) => MyWidget(),
        '/test': (context) => TestWidget(),
      },
      // onGenerateRoute: (settings) {

      // },
    );
  }
}
