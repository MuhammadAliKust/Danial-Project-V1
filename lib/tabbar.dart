import 'package:danial_project/favorite.dart';
import 'package:danial_project/home.dart';
import 'package:danial_project/profile.dart';
import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar View"),
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ]),
        ),
        body: TabBarView(children: [
          HomeView(),
          FavoriteView(),
          ProfileView(),
        ]),
      ),
    );
  }
}
