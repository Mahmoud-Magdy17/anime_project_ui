import 'package:flutter/material.dart';
import 'package:ui_project/features/home/data/repo_impl/top_characters_repo_impl.dart';

import '../../../domain/entities/top_character_entity.dart';
import 'top_characters_builder.dart';

class TopCaracters extends StatelessWidget {
  TopCaracters({super.key});
  final List<TopCharacterEntity> topCharactersList = TopCharactersRepoImpl()
      .getTopCharactersList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: TopCharactersBuilder(topCharacters: topCharactersList),
    );
  }
}
