import 'package:flutter/material.dart';
import '../common/route.dart' as route;

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
                    Navigator.pushNamed(context, route.randomRoute);
                  },
                  child: Text('random'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route.calculatorRoute);
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
                    Navigator.pushNamed(context, route.loginRoute);
                  },
                  child: Text('provider_shopper'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route.networkingRoute);
                  },
                  child: Text('netwoking'),
                ),
              ),
            ],
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, route.testRoute);
              },
              child: Text('test'),
            ),
          ),
        ],
      ),
    );
  }
}
