import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart' as http;

import 'package:vrtools/models/vrproject.dart';

Future<http.Response> fetchVRProject() async {
  final response =
      await http.get('https://avrgroup.github.io/vrtools/vrtools.json');
  return response;
}

void main() {
  group('Json Data Fetch', () {
    test('Correct Fetch of Json Data from Internet', () async {
      var f = await fetchVRProject();
      expect(f.statusCode, 200);
    });
    test('Correct Json Parse', () async {
      var f = await fetchVRProject();
      expect(f.statusCode, 200);
      final vrproject = VRProject.fromJson(jsonDecode(f.body));
      expect(vrproject.vRTools, isNotNull);
    });
  });
}
