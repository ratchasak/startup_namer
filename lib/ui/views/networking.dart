import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../business_logic/models/album.dart';

class Networking extends StatefulWidget {
  Networking({Key key}) : super(key: key);

  @override
  _NetworkingState createState() => _NetworkingState();
}

class _NetworkingState extends State<Networking> {
  Future<Album> _futureAlbum;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  Future<Album> fetchAlbum() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/albums/1');

    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Album> createAlbum(String title) async {
    final http.Response response = await http.post(
      'https://jsonplaceholder.typicode.com/albums',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'title': title,
        },
      ),
    );
    if (response.statusCode == 201) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Album> updateAlbum(String title) async {
    final http.Response response = await http.put(
      'https://jsonplaceholder.typicode.com/albums/1',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'title': title,
        },
      ),
    );
    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Album> deleteAlbum(String id) async {
    final http.Response response = await http.delete(
      'https://jsonplaceholder.typicode.com/albums/$id',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to delete album.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          FutureBuilder(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${snapshot.data?.title ?? 'Deleted'}'),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: '${snapshot.data?.title ?? 'Enter Titlte'}',
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text('Update Data'),
                        onPressed: () {
                          setState(() {
                            _futureAlbum = updateAlbum(_controller.text);
                          });
                        },
                      ),
                      RaisedButton(
                        child: Text('Delete Date'),
                        onPressed: () {
                          setState(() {
                            _futureAlbum =
                                deleteAlbum(snapshot.data.id.toString());
                          });
                        },
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
              }
              return CircularProgressIndicator();
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Titlte',
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Create Data'),
                onPressed: () {
                  setState(() {
                    _futureAlbum = createAlbum(_controller.text);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
