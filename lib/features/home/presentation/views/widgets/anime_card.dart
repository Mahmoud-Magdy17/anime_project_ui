import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.width, required this.imagePath});
  final double width;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),

              child: Image.asset(imagePath, height: 260, fit: BoxFit.fill),
            ),
            SizedBox(height: 8),
            Text(
              "Detective Conan",
              style: TextStyle(
                color: AppColors.darkPrimaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Mystery",
              style: TextStyle(
                color: AppColors.lightGrayColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        // decoration: BoxDecoration(color: AppColors.primaryColor),
      ),
    );
  }
}
