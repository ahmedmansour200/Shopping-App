import 'dart:convert';
import 'package:flutter_application_1/model/album.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<Album>> fetchAlbums() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((album) => Album.fromJson(album)).toList();
    } else {
      throw Exception('Failed to load albums');
    }
  }
}
