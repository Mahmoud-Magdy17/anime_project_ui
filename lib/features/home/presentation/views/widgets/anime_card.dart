import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/core/utils/text_styles.dart';
import 'package:ui_project/features/anime/domain/entities/anime_all_details.dart';
import 'package:ui_project/features/anime/presentation/views/anime_view.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.width, required this.animeDetails});
  final double width;
  final AnimeAllDetails animeDetails;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return AnimeView(animeAllDetails: animeDetails);
            },
          ),
        );
      },
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),

              child: Image.asset(
                animeDetails.animeImagePath,
                height: 260,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 8),
            Text(
              animeDetails.animeName,
              style: TextStyle(
                color: AppColors.darkPrimaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              animeDetails.animeCategory[0],
              style: TextStyles.subTitleThickGray12,
            ),
          ],
        ),
      ),
    );
  }
}
