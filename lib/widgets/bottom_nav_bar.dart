import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/download_screen.dart';
import 'package:netflix_clone/screens/fast_laughs_screen.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/screens/more_screen.dart';
import 'package:netflix_clone/screens/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
                child: FittedBox(child: Text("Home")),
              ),
              Tab(
                icon: Icon(Icons.search,  size: 28,),
                child: FittedBox(child: Text("Search",)), 
              ),
              Tab(
                icon: Icon(Icons.emoji_emotions,  size: 28,),
                child: FittedBox(child: Text("Fast Laugh",)),
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined,  size: 28,),
                child: FittedBox(child: Text("New & Hot")),
              ),
              Tab(
                icon: Icon(Icons.download_for_offline_outlined,  size: 30, ),
                child: FittedBox(child: Text("Downloads")),
              ),
            ],
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff9999999),
          ),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          SearchScreen(),
          FastLaughsScreen(),
          MoreScreen(),
          DownloadScreen()
        ]),
      ),
    );
  }
}
