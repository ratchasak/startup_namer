import 'package:flutter/material.dart';

import 'my_widget.dart';
import 'random_words.dart';
import 'test_widget.dart';

void main() {
  String mySongs = sing();
  print(mySongs);

  runApp(MyApp());
}
String sing() {
  var songs = List<String>();
  var songString = '';
  songs.add('aaaa');
  songs.add('bbbb');
  songs.add('cccc');
  int i = 0;
  while (i < songs.length) {
    songString += '${songs[i]} - ';
    i++;
  }
  return songString;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    MyWidget(),
    RandomWords(),
    TestWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('BottomNavigationBar Sample'),
        // ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.green,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(
                      color: Colors
                          .yellow))), // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      ),
      // home: RamdomWords(),
      // initialRoute: '/',
      // routes: {
      //   '/': (BuildContext ctx) => (DefaultTabController(
      //         length: 3,
      //         child: Scaffold(
      //           appBar: AppBar(
      //             title: Text('Tabs Demo'),
      //           ),
      //           bottomNavigationBar: TabBar(
      //             tabs: [
      //               Tab(icon: Icon(Icons.directions_car)),
      //               Tab(icon: Icon(Icons.directions_transit)),
      //               Tab(icon: Icon(Icons.directions_bike)),
      //             ],
      //           ),
      //           body: TabBarView(
      //             children: [
      //               RamdomWords(),
      //               MyWidget(),
      //               TestWidget(),
      //             ],
      //           ),
      //         ),
      //       )),
      //   '/random_words': (BuildContext ctx) => RamdomWords(),
      //   '/my_widget': (BuildContext ctx) => MyWidget(),
      //   '/test': (BuildContext ctx) => TestWidget(),
      // },
    );
  }
}
