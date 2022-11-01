import 'package:flutter/material.dart';
import 'package:newapp/pages/homepage.dart';
import 'package:newapp/pages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          children: [
            const TabBarView(
              physics: NeverScrollableScrollPhysics(),
                children: [Home(), Profile(), Profile(), Profile()]),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: BottomTabBarView().bottomPadding,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BottomTabBarView().borderRadiusview,
                    //shape: BoxShape.circle,
                    color: BottomTabBarView().bottomColor,
                  ),
                  height: BottomTabBarView().bottomHeight,
                  width: BottomTabBarView().bottomWidth,
                  child: const TabBar(
                    indicatorColor: Color(0xffB67F2A),
                    physics: BouncingScrollPhysics(),
                    tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      icon: Icon(Icons.list),
                    ),
                    Tab(
                      icon: Icon(Icons.notifications),
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomTabBarView {
  final EdgeInsets bottomPadding = const EdgeInsets.symmetric(horizontal: 20.0);
  final double bottomHeight = 50;
  final double bottomWidth = 352.7;
  final Color bottomColor = Colors.white;
  final BorderRadius borderRadiusview = BorderRadius.circular(20);
}
