
import 'package:flutter/material.dart';

class AnimeHeader extends StatelessWidget {
  const AnimeHeader({
    super.key,
    required this.imagePath,
    required this.title,
    required this.imageHeight,
  });

  final String imagePath;
  final String title;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: imageHeight,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: -105,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/title_circle.png", scale: 0.75),
                  Text(
                    title.split(" ").join("\n"),
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
    );
  }
}