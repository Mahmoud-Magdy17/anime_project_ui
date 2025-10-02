import 'package:flutter/material.dart';

import '../../../domain/entities/top_character_entity.dart';
import 'top_character_card.dart';

class TopCharactersBuilder extends StatelessWidget {
  const TopCharactersBuilder({super.key, required this.topCharacters});
  final List<TopCharacterEntity> topCharacters;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return TopCharacterCard(character: topCharacters[index]);
      },
      padding: EdgeInsets.only(right: 14),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 12);
      },
      itemCount: topCharacters.length,
    );
  }
}
