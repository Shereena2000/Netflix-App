import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/download_screen.dart';
import 'package:netflix_clone/screens/fast_laughs_screen.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/screens/more_screen.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.emoji_emotions),
                text: "Fast Laugh",
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined),
                text: "New & Hot",
              ),
              Tab(
                icon: Icon(Icons.download_for_offline_outlined),
                text: "Downloads",
              ),
            ],
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff9999999),
          ),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          FastLaughsScreen(),
          MoreScreen(),
          DownloadScreen()
        ]),
      ),
    );
  }
}
