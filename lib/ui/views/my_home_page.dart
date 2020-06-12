import 'package:flutter/material.dart';

const String initialRoute = '/';
const String randomRoute = '/random_words';
const String myRoute = '/my_widget';
const String testRoute = '/test';
const String calculatorRoute = '/calculator';
const String providerRoute = '/provider';
const String loginRoute = '/login';
const String catalogRoute = '/catalog';
const String cartRoute = '/cart';
const String networkingRoute = '/networking';
const String moolaxRoute = '/moolax';

class MyHomePage extends StatelessWidget {
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
                Navigator.pushNamed(context, moolaxRoute);
              },
              child: Text('moolax'),
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
