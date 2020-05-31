import 'package:flutter/material.dart';

import 'package:startup_namer/common/constants.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    Navigator.pushNamed(context, calculatorRoute);
                  },
                  child: Text('calculator'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, loginRoute);
                  },
                  child: Text('provider_shopper'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, networkingRoute);
                  },
                  child: Text('netwoking'),
                ),
              ),
            ],
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
