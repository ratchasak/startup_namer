import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:provider/provider.dart';

import 'package:startup_namer/common/constants.dart';
import 'package:startup_namer/common/route.dart' as route;
import 'package:startup_namer/common/theme.dart' as theme;
import 'package:startup_namer/models/cart.dart';
import 'package:startup_namer/models/catalog.dart';

void main() {
  // enable network traffic logging
  HttpClient.enableTimelineLogging = true;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
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
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: theme.appTheme,
      initialRoute: initialRoute,
      onGenerateRoute: route.generateRoute,
    );
  }
}
