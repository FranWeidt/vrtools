import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:vrtools/domain/entities/vrproject_entity.dart';

import 'main/factories/pages/vrproject_presenter_factory.dart';
import 'ui/home_page_screen.dart';
import 'ui/theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appTitle = 'VRTools';
  Future<VRProjectEntity> project;

  @override
  void initState() {
    super.initState();
    project = makeVRProjectPresenter().loadData();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    return Provider<Future<VRProjectEntity>>(
      child: MaterialApp(
        title: appTitle,
        theme: buildThemeData(),
        navigatorObservers: [routeObserver],
        home: HomePage(title: appTitle),
      ),
      create: (_) => project,
    );
  }
}
