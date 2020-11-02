import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:vrtools/data/http/http_client.dart';
import 'package:vrtools/data/http/http_error.dart';
import 'package:vrtools/data/models/vrproject_model.dart';
import 'package:vrtools/domain/entities/vrproject_entity.dart';
import 'package:vrtools/domain/usecases/load_vrproject.dart';

class RemoteLoadProject implements LoadVRProject {
  final String url;
  final HttpClient httpClient;

  RemoteLoadProject({@required this.url, @required this.httpClient});

  Future<VRProjectEntity> load() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
      return VRProject.fromJson(httpResponse).toEntity();
      //return httpResponse
      //    .map<VRProjectEntity>((json) => VRProject.fromJson(json).toEntity());
    } on HttpError catch (error) {
      // TODO: Improve Error Treatment
      throw "Unexpected";
    }
  }
}
