import 'package:flutter/material.dart';
import 'package:ui_project/features/anime/domain/entities/anime_all_details.dart';
import '../../../data/repo_impl/top_animies_repo_impl.dart';
import 'anime_cards_list_view_builder.dart';

class AnimeCards extends StatelessWidget {
  AnimeCards({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });
  final List<AnimeAllDetails> animies = TopAnimiesRepoImpl()
      .getTopAnimiesList();
  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 320,
        width: double.infinity,
        child: AnimeCardsListViewBuilder(
          screenWidth: screenWidth,
          animies: animies,
        ),
      ),
    );
  }
}
