import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/text_styles.dart';

import '../../../domain/entities/top_character_entity.dart';

class TopCharacterCard extends StatelessWidget {
  const TopCharacterCard({super.key, required this.character});
  final TopCharacterEntity character;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 56,
          backgroundImage: AssetImage(character.imageAssetPath),
        ),
        SizedBox(height: 24),
        Text(
          character.characterName,
          style: TextStyles.nameSemiBoldtextStyle16,
        ),
        Text(
          character.characterAnime,
          style: TextStyles.subTitleThickGray12.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
