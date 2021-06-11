import 'package:http/http.dart';
import 'package:http/testing.dart';

/**
 * Created by IntelliJ IDEA.<br/>
 * User: c_weerasinghe<br/>
 * Date: 6/11/21<br/>
 * Time: 2:44 PM<br/>
 * To change this template use File | Settings | File Templates.
 */
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:unit_testing/album/modals/album.dart';
import 'package:unit_testing/album/services/album_service.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final client = MockClient((request) async {
        return Response('{"userId": 1, "id": 2, "title": "mock"}', 200);
      });

      Album data = await fetchAlbum(client);
      print(data.title);
      expect(await fetchAlbum(client), isA<Album>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient((request) async {
        return Response('Not Found', 404);
      });
      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.

      expect(fetchAlbum(client), throwsException);
    });
  });
}
