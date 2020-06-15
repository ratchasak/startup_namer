import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'my_home_page_viewmodel.dart';
import '../../../app/locator.dart';
import '../../../app/router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      builder: (context, model, child) {
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
                    Navigator.pushNamed(context, Routes.moolaxRoute);
                  },
                  child: Text('moolax'),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.testRoute);
                  },
                  child: Text('test'),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => MyHomePageViewModel(),
    );
  }
}
