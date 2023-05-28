import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final state = HomeState();

  void initProvider() {
  }

  void plusNum(){
    state.num++;
    notifyListeners();
  }
}

class HomeState {
  late int num;

  HomeState() {
    num = 0;
  }
}
