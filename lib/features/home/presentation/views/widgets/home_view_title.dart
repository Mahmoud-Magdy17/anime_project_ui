import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';

class HomeViewTitle extends StatelessWidget {
  const HomeViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Where Anime Comes Alive",
      style: TextStyle(
        color: AppColors.darkPrimaryColor,
        fontFamily: "Raleway",
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
