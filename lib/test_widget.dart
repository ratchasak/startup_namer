import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 100.0,
              color: Colors.red,
            ),
            SizedBox(width: 50.0,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(width: 50.0,),
            Container(
              width: 100.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
