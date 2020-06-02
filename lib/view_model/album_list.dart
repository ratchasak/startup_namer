import 'package:flutter/material.dart';
import '../models/album.dart';
import '../services/webservice.dart';

class AlbumListViewModel extends ChangeNotifier {
  List<AlbumViewModel> albums = List<AlbumViewModel>();

  Future<void> fetchAlbums() async {
    final results = await Webservice().fetchAlbum();
    this.albums = results.map((item) => AlbumViewModel(album: item)).toList();
    print(this.albums);
    notifyListeners();
  }
}

class AlbumViewModel {
  final Album album;

  AlbumViewModel({this.album});

  int get userId {
    return this.album.userId;
  }

  int get id {
    return this.album.id;
  }

  String get title {
    return this.album.title;
  }
}