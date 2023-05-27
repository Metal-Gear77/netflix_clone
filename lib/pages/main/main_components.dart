import 'package:flutter/material.dart';

class MainComponent {
  List<BottomNavigationBarItem> bottomNavigationBarItemList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: '홈',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: '게임',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school),
      label: 'NEW & HOT',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school),
      label: '저장된 콘텐츠 목록',
    ),
  ];
}
