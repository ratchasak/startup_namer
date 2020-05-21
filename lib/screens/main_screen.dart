import 'package:flutter/material.dart';

import 'package:startup_namer/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, randomRoute);
              },
              child: Text('random'),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, myRoute);
              },
              child: Text('my'),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, calculatorRoute);
              },
              child: Text('calculator'),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, providerRoute);
              },
              child: Text('provider'),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, testRoute);
              },
              child: Text('test'),
            ),
          ),
        ],
      ),
    );
  }
}
