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
      title: 'Netflix Clone',
      theme: MyStyle().themeData,
      initialRoute: MyRoutes().initialRoutes,
      routes: MyRoutes().routes,
      home: MainPage(),
    );
  }
}
