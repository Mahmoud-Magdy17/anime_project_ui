import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/core/utils/text_styles.dart';

import '../../../domain/entities/anime_all_details.dart';

class AnimeViewBody extends StatelessWidget {
  const AnimeViewBody({super.key, required this.animeAllDetails});
  final AnimeAllDetails animeAllDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 140, left: 16, right: 16),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(color: AppColors.darkPrimaryColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (String category in animeAllDetails.animeCategory)
                CustomCategoryItem(categoryItem: category),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key, required this.categoryItem});
  final String categoryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9).withAlpha(100),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        categoryItem,
        style: TextStyles.subTitleThickGray12.copyWith(
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
