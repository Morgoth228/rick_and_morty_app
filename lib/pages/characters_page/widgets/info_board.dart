
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/model/character.dart';
import 'package:rick_and_morty/navigator/app_router.dart';
import 'package:rick_and_morty/util/path_id.dart';

import 'first_episode_tile.dart';
import 'last_location_tile.dart';
import 'status_tile.dart';

class InfoBoard extends StatelessWidget {
  const InfoBoard({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DefaultTextStyle(
        style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface,
            ) ??
            const TextStyle(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatusTile(
              character: character,
            ),
            GestureDetector(
              onTap: (){
                context.router.root.push(LocationRoute(id: int.parse(character.location.url.id)));
              },
              child: LastLocationTile(
                character: character,
              ),
            ),
            GestureDetector(
              onTap: (){
                if(character.firstEpisodeName!=null){
                  context.router.root.push(EpisodeRoute(id: int.parse(character.origin.url.id)));
                }
              },
              child: FirstEpisodeTile(
                character: character,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
