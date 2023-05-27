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
      body: PageView(
        controller: subjectProvider.state.pageController,
        // physics: NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {},
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: MainComponent().bottomNavigationBarItemList,
        currentIndex: subjectState.pageIndex,
        selectedItemColor: Colors.white,
        selectedLabelStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 8),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle:
            TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 8),
        showUnselectedLabels: true,
        onTap: (int index) {
          subjectProvider.selectPage(index);
        },
      ),
    );
  }
}
