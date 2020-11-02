import 'package:http/http.dart';
import 'package:vrtools/data/http/http_client.dart';
import 'package:vrtools/infra/http/http_adapter.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
