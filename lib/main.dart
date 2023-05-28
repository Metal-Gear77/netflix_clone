import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/main/main_view.dart';
import 'package:netflix_clone/utilities/routes.dart';
import 'package:netflix_clone/utilities/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Netflix Clone',
      theme: MyStyle().themeData,
      initialRoute: MyRoutes().initialRoutes,
      routes: MyRoutes().routes,
      home: MainPage(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
