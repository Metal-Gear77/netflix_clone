import 'package:flutter/material.dart';

class MainComponent {
  List<BottomNavigationBarItem> bottomNavigationBarItemList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: '홈',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.videogame_asset_outlined),
      label: '게임',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.video_collection_outlined),
      label: 'NEW & HOT',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.download_for_offline_outlined),
      label: '저장된 콘텐츠 목록',
    ),
  ];
}
