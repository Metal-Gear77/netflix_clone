import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netflix_clone/pages/home/home_view.dart';
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
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/img/netflix_official_logo_icon_168085.svg')),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.face)),
          SizedBox(width: 10)
        ],
      ),
      body: PageView(
        controller: subjectProvider.state.pageController,
        // physics: NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {},
        children: [HomePage(),
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
        onTap: (int index) {
          subjectProvider.selectPage(index);
        },
      ),
    );
  }
}
