import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/main/main_components.dart';
import 'package:provider/provider.dart';

import 'main_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MainProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final subjectState = context.watch<MainProvider>().state;
    final subjectProvider = context.read<MainProvider>();

    subjectProvider.initProvider();

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: MainComponent().bottomNavigationBarItemList,
        currentIndex: subjectState.naviNum,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        onTap: (int i) {
          subjectProvider.selectNavi(i);
        },
      ),
    );
  }
}
