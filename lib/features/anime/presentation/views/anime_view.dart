import 'package:flutter/material.dart';

import '../../domain/entities/anime_all_details.dart';

class AnimeView extends StatelessWidget {
  const AnimeView({super.key, required this.animeAllDetails});
  final AnimeAllDetails animeAllDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Anime View: ${animeAllDetails.animeName}")),
    );
  }
}
