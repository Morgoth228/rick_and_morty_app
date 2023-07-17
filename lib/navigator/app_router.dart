import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:rick_and_morty/home_page.dart';
import 'package:rick_and_morty/model/character.dart';
import 'package:rick_and_morty/model/episode.dart';
import 'package:rick_and_morty/pages/charaacter_page/character_page.dart';
import 'package:rick_and_morty/pages/characters_page/characters_page.dart';
import 'package:rick_and_morty/pages/episode_page/episode_page.dart';
import 'package:rick_and_morty/pages/episodes_page/episodes_page.dart';
import 'package:rick_and_morty/pages/location_page/location_page.dart';
import 'package:rick_and_morty/pages/locations_page/locations_page.dart';

import '../model/location.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: HomeRoute.page, children: [
          AutoRoute(initial: true, page: CharacterTab.page, children: [
            AutoRoute(
              initial: true,
              page: CharactersRoute.page,
            ), // Роут экрана списка персонажеий
            AutoRoute(
              page: CharacterRoute.page,
            ), //Роут экрана характеристики персонажа
          ]), // Роут ветки персонажей в нвигационной панели
          AutoRoute(page: EpisodeTab.page, children: [
            AutoRoute(
              initial: true,
              page: EpisodesRoute.page,
            ), // Роут экрана списка персонажеий
            AutoRoute(
              page: EpisodeRoute.page,
            ), //Роут экрана характеристики персонажа
          ]), // Роут ветки персонажей в нвигационной панели
          AutoRoute(page: LocationTab.page, children: [
            AutoRoute(
              initial: true,
              page: LocationsRoute.page,
            ), // Роут экрана списка персонажеий
            AutoRoute(
              page: LocationRoute.page,
            ), //Роут экрана характеристики персонажа
          ]), // Роут ветки персонажей в нвигационной панели
        ]), //Корневой роут навигационной панели
      ];
}

@RoutePage(name: 'CharacterTab')
class CharacterTabPage extends AutoRouter {
  const CharacterTabPage({super.key});
}

@RoutePage(name: 'EpisodeTab')
class EpisodeTabPage extends AutoRouter {
  const EpisodeTabPage({super.key});
}

@RoutePage(name: 'LocationTab')
class LocationTabPage extends AutoRouter {
  const LocationTabPage({super.key});
}
