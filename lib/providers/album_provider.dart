import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/album.dart';

class AlbumProvider with ChangeNotifier {
  final List<Album> _albumList = List.empty(growable: true);

  List<Album> getAlbumList() {
    _fenchAlbums();
    return _albumList;
  }

    void _fenchAlbums() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final List<Album> result = jsonDecode(response.body)
      .map<Album>((json) => Album.fromJson(json))
      .toList();

    _albumList.clear();
    _albumList.addAll(result);
    notifyListeners();
  }
}


