import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/navigator/app_router.dart';
import 'package:rick_and_morty/pages/characters_page/characters_page.dart';
import 'package:rick_and_morty/pages/episodes_page/episodes_page.dart';
import 'package:rick_and_morty/pages/locations_page/locations_page.dart';
@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(routes: const [
      CharacterTab(),
      EpisodeTab(),
      LocationTab(),
    ],
    lazyLoad: false,
    bottomNavigationBuilder: (context, tabsRouter){
      return  CupertinoTabBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.video_camera),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
          ),
        ],
      );
    },
    );
  }
}
