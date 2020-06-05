import 'package:flutter/material.dart';
import '../services/shared_preferences_util.dart';

class SharedPreferencesView extends StatefulWidget {
  @override
  _SharedPreferencesViewState createState() => _SharedPreferencesViewState();
}

class _SharedPreferencesViewState extends State<SharedPreferencesView> {
  var savedString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print(StorageUtil.putString('myString', 'test value'));
              // StorageUtil.putString('myString', 'test value');
            },
            child: Text('Save String'),
          ),
          Text(savedString),
          RaisedButton(
            onPressed: () {
              setState(() {
                savedString = StorageUtil.getString('myString');
              });
              print(savedString);
            },
            child: Text('Get String'),
          )
        ],
      ),
    );
  }
}
