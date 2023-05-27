import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  final state = MainState();

  void initProvider() {}

  void selectNavi(int i) {
    state.naviNum = i;
    notifyListeners();
  }
}

class MainState {
  late int naviNum;

  MainState() {
    naviNum = 0;
  }
}
