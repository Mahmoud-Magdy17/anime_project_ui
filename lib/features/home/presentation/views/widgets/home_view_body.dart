import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/core/utils/text_styles.dart';

import 'anime_cards.dart';
import 'category_list_items.dart';
import 'top_characters.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text("Where Anime Comes Alive", style: TextStyles.titleBoldtextStyle24),
        SizedBox(height: 24),
        CategoryListItems(),
        SizedBox(height: 20),
        AnimeCards(screenWidth: screenWidth, screenHeight: screenHeight),
        Text(
          "Top Characters",
          style: TextStyles.titleBoldtextStyle24.copyWith(
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: 24),
        TopCaracters(),
      ],
    );
  }
}
