import 'package:flutter/material.dart';

import '../../../../anime/domain/entities/anime_all_details.dart';
import 'anime_card.dart';

class AnimeCardsListViewBuilder extends StatelessWidget {
  const AnimeCardsListViewBuilder({
    super.key,
    required this.screenWidth,
    required this.animies,
  });

  final double screenWidth;
  final List<AnimeAllDetails> animies;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

      itemBuilder: (BuildContext context, int index) {
        return AnimeCard(width: screenWidth / 2, animeDetails: animies[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 14);
      },
      itemCount: animies.length,
    );
  }
}
