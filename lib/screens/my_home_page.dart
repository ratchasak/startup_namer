import 'package:flutter/material.dart';
import 'package:startup_namer/services/router.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

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
                    Navigator.pushNamed(context, Routes.randomRoute);
                  },
                  child: Text('random'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.calculatorRoute);
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
                    Navigator.pushNamed(context, Routes.loginRoute);
                  },
                  child: Text('provider_shopper'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.networkingRoute);
                  },
                  child: Text('netwoking'),
                ),
              ),
            ],
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.testScreenRoute);
              },
              child: Text('test_screen'),
            ),
          ),
        ],
      ),
    );
  }
}
