import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart' as http;

import 'package:vrtools/data/models/vrproject_model.dart';
import 'package:vrtools/data/usecases/remote_load_vrproject.dart';

import 'package:vrtools/infra/http/http_adapter.dart';
import 'package:vrtools/main/factories/usecases/load_vrproject_factory.dart';

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
    test('Correct Entitity Transformation', () async {
      HttpAdapter httpClient = HttpAdapter(http.Client());
      RemoteLoadProject remote = RemoteLoadProject(
          url: 'https://avrgroup.github.io/vrtools/vrtools.json',
          httpClient: httpClient);
      var vrproject = await remote.load();
      print(vrproject.vRTools.description);
      expect(vrproject, isNotNull);
    });
    test('Correct Loading Using Interfaces and Factories', () async {
      var loadVRProject = makeRemoteLoadVRProject();
      var vrproject = await loadVRProject.load();
      print(vrproject.vRTools.description);
      expect(vrproject, isNotNull);
    });
  });
}
