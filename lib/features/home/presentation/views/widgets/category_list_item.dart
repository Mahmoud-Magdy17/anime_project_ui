

import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.itemTitle,
    required this.isActive,
  });

  final String itemTitle;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primaryColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          itemTitle,
          style: TextStyle(
            color: isActive ? AppColors.whiteColor : AppColors.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Raleway",
          ),
        ),
      ),
    );
  }
}
