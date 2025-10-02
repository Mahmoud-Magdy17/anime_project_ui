import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_project/core/utils/app_colors.dart';

import 'text_styles.dart';

class CustomBottomNavItem extends BottomNavigationBarItem {
  CustomBottomNavItem({required String icon, required String label})
    : super(
        icon: SvgPicture.asset(icon, color: AppColors.lightGrayColor),
        label: "",
        activeIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyles.nameSemiBoldtextStyle16.copyWith(
                  fontSize: 12,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      );
}
