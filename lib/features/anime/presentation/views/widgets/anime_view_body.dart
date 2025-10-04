import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/core/utils/text_styles.dart';

import '../../../domain/entities/anime_all_details.dart';

class AnimeViewBody extends StatelessWidget {
  const AnimeViewBody({super.key, required this.animeAllDetails});
  final AnimeAllDetails animeAllDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 150, left: 16, right: 16),
      width: double.infinity,
      // height: 500,
      decoration: BoxDecoration(color: AppColors.secondLevelColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (String category in animeAllDetails.animeCategory)
                CustomCategoryItem(categoryItem: category),
            ],
          ),
          Divider(),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AchievementsItem(
                iconPath: "assets/images/eye_icon.svg",
                title: "${animeAllDetails.animeViews} Views",
              ),
              AchievementsItem(
                iconPath: "assets/images/hands_clapping_icon.svg",
                title: "${animeAllDetails.animeClaps} Claps",
              ),
              AchievementsItem(
                iconPath: "assets/images/movies_roll_icon.svg",
                title: "${animeAllDetails.numberOfSeasons} Seasons",
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/images/fire_icon.svg"),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  animeAllDetails.animeDescription,
                  softWrap: true,
                  style: TextStyles.subTitleThickGray12.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class AchievementsItem extends StatelessWidget {
  const AchievementsItem({
    super.key,
    required this.title,
    required this.iconPath,
  });

  final String title;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyles.subTitleThickGray12.copyWith(
            color: AppColors.whiteColor,
            fontSize: 14,
          ),
        ),
      ],
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
        boxShadow: [
          BoxShadow(
            color: AppColors.darkPrimaryColor,
            blurRadius: 4,
            spreadRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
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
