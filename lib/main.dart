import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'ui/home_page_screen.dart';
import 'ui/theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'VRTools';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    return MaterialApp(
      title: appTitle,
      theme: buildThemeData(),
      navigatorObservers: [routeObserver],
      home: HomePage(title: appTitle),
    );
  }
}
