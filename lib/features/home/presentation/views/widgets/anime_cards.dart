import 'package:flutter/material.dart';
import 'package:ui_project/features/home/presentation/views/widgets/custom_sliver_sized_box.dart';

import 'anime_card.dart';

class AnimeCards extends StatelessWidget {
  const AnimeCards({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          AnimeCard(
            width: screenWidth / 2,
            imagePath: 'assets/images/conan_image.jpg',
          ),
          CustomSliverSizedBox(width: 14),
          AnimeCard(
            width: screenWidth / 2,
            imagePath: 'assets/images/demon_slayer_image.jpg',
          ),
          CustomSliverSizedBox(width: 14),
          AnimeCard(
            width: screenWidth / 2,
            imagePath: 'assets/images/dragon_ball_image.jpg',
          ),
          CustomSliverSizedBox(width: 14),
          AnimeCard(
            width: screenWidth / 2,
            imagePath: 'assets/images/hunter_x_hunter_image.jpg',
          ),
          CustomSliverSizedBox(width: 14),
        ],
      ),
    );
  }
}
