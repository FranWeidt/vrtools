import 'package:vrtools/data/usecases/remote_load_vrproject.dart';
import 'package:vrtools/domain/usecases/load_vrproject.dart';
import 'package:vrtools/main/factories/http/http_client_factory.dart';

String urlJson = 'https://avrgroup.github.io/vrtools/vrtools.json';

LoadVRProject makeRemoteLoadVRProject() =>
    RemoteLoadProject(httpClient: makeHttpAdapter(), url: urlJson);
