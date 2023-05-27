import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  final state = MainState();

  void initProvider() {}

  void selectPage(int index) {
    state.pageIndex = index;
    state.pageController.jumpToPage(index);
    // subjectState.pageController
    //     .animateToPage(index, duration: Duration(seconds: 1), curve: Curves.easeInOut);
    notifyListeners();
  }
}

class MainState {
  late int pageIndex;
  final PageController pageController = PageController(initialPage: 0);

  MainState() {
    pageIndex = 0;
  }
}
