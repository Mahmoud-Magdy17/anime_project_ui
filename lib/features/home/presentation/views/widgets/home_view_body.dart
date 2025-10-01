import 'package:flutter/material.dart';
import 'package:ui_project/features/home/presentation/views/widgets/anime_cards.dart';

import 'category_list_items.dart';
import 'home_view_title.dart';

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
        HomeViewTitle(),
        SizedBox(height: 24),
        CategoryListItems(),
        SizedBox(height: 20),
        AnimeCards(screenWidth: screenWidth, screenHeight: screenHeight),
      ],
    );
  }
}
