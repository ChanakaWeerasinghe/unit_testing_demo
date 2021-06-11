import 'dart:convert';

import 'package:unit_testing/album/modals/album.dart';

/**
 * Created by IntelliJ IDEA.<br/>
 * User: c_weerasinghe<br/>
 * Date: 6/11/21<br/>
 * Time: 2:51 PM<br/>
 * To change this template use File | Settings | File Templates.
 */

import 'package:http/http.dart' as http;

Future<Album> fetchAlbum(http.Client client) async {
  final response =
  await client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
