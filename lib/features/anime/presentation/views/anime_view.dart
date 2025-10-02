import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';

import '../../domain/entities/anime_all_details.dart';
import 'widgets/anime_view_body.dart';

class AnimeView extends StatelessWidget {
  const AnimeView({super.key, required this.animeAllDetails});
  final AnimeAllDetails animeAllDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondLevelColor,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // الـ body (تحت الصورة، وممكن يتغطى جزء منه)
            Padding(
              padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height / 5) * 3 - 40,
              ),
              child: AnimeViewBody(animeAllDetails: animeAllDetails),
            ),

            // الصورة + الدايرة + النص
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    // صورة الأنمي
                    Image.asset(
                      animeAllDetails.animeImagePath,
                      width: double.infinity,
                      height: (MediaQuery.of(context).size.height / 5) * 3,
                      fit: BoxFit.fill,
                    ),

                    // الدايرة + النص
                    Positioned(
                      bottom: -105,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/title_circle.png",
                            scale: 0.75,
                          ),
                          Text(
                            animeAllDetails.animeName.split(" ").join("\n"),
                            textAlign: TextAlign.center,

                            style: const TextStyle(
                              fontSize: 48,
                              fontFamily: "RowRocker",
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
