import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class TextStyles {
  static TextStyle titleBoldtextStyle24 = TextStyle(
    color: AppColors.darkPrimaryColor,
    fontFamily: "Raleway",
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle nameSemiBoldtextStyle16 = TextStyle(
    color: AppColors.darkPrimaryColor,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static TextStyle subTitleThickGray12 = TextStyle(
    color: AppColors.lightGrayColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
