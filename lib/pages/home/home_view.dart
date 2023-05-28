import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/home/home_components.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final subjectState = context.watch<HomeProvider>().state;
    final subjectProvider = context.read<HomeProvider>();

    subjectProvider.initProvider();

    return CustomScrollView(slivers: [
      SliverAppBar(
        automaticallyImplyLeading: false,
        floating: true,
        pinned: false,
        snap: true,
        expandedHeight: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          expandedTitleScale: 1,
          background: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.black,
                  Colors.transparent.withOpacity(0.8),
                  Colors.transparent.withOpacity(0.6)
                ])),
          ),
          titlePadding: EdgeInsets.zero,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text("시리즈")),
                  TextButton(onPressed: () {}, child: Text("영화")),
                  TextButton(onPressed: () {}, child: Text("카테고리")),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) => HomeComponents().contentsRow(context)))
    ]);
  }
}
