import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startup_namer/models/cart.dart';
import 'package:startup_namer/models/catalog.dart';
import 'package:startup_namer/services/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
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
      child: MaterialApp(
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
      ),
    );
  }
}
