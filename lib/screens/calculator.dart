import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Calculator> {
  String _str;

  @override
  void initState() {
    super.initState();
    this._str = Compute.str;
  }

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    if (mediaquery.orientation == Orientation.landscape) {
      return CalculateLandscape(
        key: widget.key,
        title: widget.title,
        str: this._str,
      );
    }
    return CalculatePotrait(
      key: widget.key,
      title: widget.title,
      str: this._str,
    );
  }
}

class Compute {
  static String str = '0';

  static void add(String val) {
    if (str.compareTo('0') == 0) {
      str = val;
    } else {
      str += val;
    }
  }

  static void clear() {
    str = '0';
  }

  static void delete() {
    if (str.compareTo('0') != 0) {
      String temp = str.substring(0, str.length - 1);
      str = temp == '' ? str = '0' : str = temp;
    }
  }

  static String compute() {
    List<String> lst = [];
    double result = 0;
    int start = 0;
    for (int i = 0; i < str.length; i++) {
      if (str[i].compareTo('+') == 0) {
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i + 1;
      } else if (str[i].compareTo('-') == 0) {
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i + 1;
      } else if (str[i].compareTo('*') == 0) {
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i + 1;
      } else if (str[i].compareTo('/') == 0) {
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i + 1;
      }
    }
    if (start < str.length) {
      lst.add(str.substring(start, str.length));
    }
    for (int i = 0; i < lst.length; i++) {
      if (i == 0) {
        result = double.parse(lst[i]);
      } else if (i > 0 && double.tryParse(lst[i]) != null) {
        if (lst[i - 1].compareTo('*') == 0) {
          result *= double.parse(lst[i]);
        } else if (lst[i - 1].compareTo('/') == 0) {
          result /= double.parse(lst[i]);
        } else if (lst[i - 1].compareTo('+') == 0) {
          result += double.parse(lst[i]);
        } else if (lst[i - 1].compareTo('-') == 0) {
          result -= double.parse(lst[i]);
        } else {
          return "ERROR";
        }
      }
    }
    return (result - result.truncate()) == 0
        ? result.truncate().toString()
        : result.toString();
  }
}

class CalculateLandscape extends StatefulWidget {
  final String title;
  final String str;
  CalculateLandscape({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalculateLandscape createState() => _CalculateLandscape(this.str);
}

class _CalculateLandscape extends State<CalculateLandscape> {
  String _str;
  _CalculateLandscape(this._str);

  void update(String val) {
    Compute.add(val);
    setState(() {
      this._str = Compute.str;
    });
  }

  void clear() {
    setState(() {
      Compute.clear();
      this._str = Compute.str;
    });
  }

  void delete() {
    setState(() {
      Compute.delete();
      this._str = Compute.str;
    });
  }

  void compute() {
    if (Compute.str.compareTo('0') != 0) {
      setState(() {
        this._str = Compute.compute();
        Compute.str = this._str;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this._str = Compute.str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                  child: Text(
                    _str,
                    textScaleFactor: 3.0,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('7', () {}, 3, Colors.black12),
                  CustomButton('8', () {}, 3, Colors.black12),
                  CustomButton('9', () {}, 3, Colors.black12),
                  CustomButton('C', () {
                    clear();
                  }, 3, Colors.black12),
                  CustomButton('DEL', () {
                    delete();
                  }, 3, Colors.black12),
                  CustomButton('.', () {}, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('4', () {}, 3, Colors.black12),
                  CustomButton('5', () {}, 3, Colors.black12),
                  CustomButton('6', () {}, 3, Colors.black12),
                  CustomButton('+', () {}, 3, Colors.black12),
                  CustomButton('-', () {}, 3, Colors.black12),
                  CustomButton('*', () {}, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('1', () {}, 3, Colors.black12),
                  CustomButton('2', () {}, 3, Colors.black12),
                  CustomButton('3', () {}, 3, Colors.black12),
                  CustomButton('0', () {}, 3, Colors.black12),
                  CustomButton('=', () {}, 3, Colors.black12),
                  CustomButton('/', () {}, 3, Colors.black12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatePotrait extends StatefulWidget {
  final String str;
  final String title;

  CalculatePotrait({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalculatePotraitState createState() => _CalculatePotraitState(this.str);
}

class _CalculatePotraitState extends State<CalculatePotrait> {
  String _str;
  _CalculatePotraitState(this._str);

  void update(String val) {
    Compute.add(val);
    setState(() {
      this._str = Compute.str;
    });
  }

  void clear() {
    setState(() {
      Compute.clear();
      this._str = Compute.str;
    });
  }

  void delete() {
    setState(() {
      Compute.delete();
      this._str = Compute.str;
    });
  }

  void compute() {
    if (Compute.str.compareTo('0') != 0) {
      setState(() {
        this._str = Compute.compute();
        Compute.str = this._str;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this._str = Compute.str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                  child: Text(
                    _str,
                    textScaleFactor: 3.0,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('C', () {
                    clear();
                  }, 9, Colors.black12),
                  CustomButton('DEL', () {
                    delete();
                  }, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('7', () {
                    update('7');
                  }, 3, Colors.black12),
                  CustomButton('8', () {
                    update('8');
                  }, 3, Colors.black12),
                  CustomButton('9', () {
                    update('9');
                  }, 3, Colors.black12),
                  CustomButton('+', () {
                    update('+');
                  }, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('4', () {
                    update('4');
                  }, 3, Colors.black12),
                  CustomButton('5', () {
                    update('5');
                  }, 3, Colors.black12),
                  CustomButton('6', () {
                    update('6');
                  }, 3, Colors.black12),
                  CustomButton('-', () {
                    update('-');
                  }, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('1', () {
                    update('1');
                  }, 3, Colors.black12),
                  CustomButton('2', () {
                    update('2');
                  }, 3, Colors.black12),
                  CustomButton('3', () {
                    update('3');
                  }, 3, Colors.black12),
                  CustomButton('*', () {
                    update('*');
                  }, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('0', () {
                    update('0');
                  }, 3, Colors.black12),
                  CustomButton('.', () {
                    update('.');
                  }, 3, Colors.black12),
                  CustomButton('=', () {
                    compute();
                  }, 3, Colors.black12),
                  CustomButton('/', () {
                    update('/');
                  }, 3, Colors.black12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String _value;
  final Function _funct;
  final int _flexvalue;
  final Color _bgcolor;

  CustomButton(this._value, this._funct, this._flexvalue, this._bgcolor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this._flexvalue,
      child: Container(
        // child: Expanded(
        //   flex: this._flexvalue,
        padding: EdgeInsets.all(0.5),
        child: FlatButton(
          child: Text(
            this._value,
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
          onPressed: this._funct,
          color: this._bgcolor,
        ),
      ),
    );
    // );
  }
}
