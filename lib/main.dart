import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'package:startup_namer/constants.dart';
import 'package:startup_namer/router.dart' as router;
import 'package:startup_namer/service_locator.dart';
// pub global activate devtools
void main() {
  // enable network traffic logging
  HttpClient.enableTimelineLogging = true;
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: initialRoute,
      onGenerateRoute: router.generateRoute,
    );
  }
}
