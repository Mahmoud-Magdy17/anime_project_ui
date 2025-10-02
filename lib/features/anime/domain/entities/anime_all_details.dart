class AnimeAllDetails {
  final String animeName;
  final int animeViews;
  final int animeClaps;
  final int numberOfSeasons;
  final String animeDescription;
  final String animeImagePath;
  final List<String> animeCategory;
  const AnimeAllDetails({
    required this.animeCategory,
    required this.animeImagePath,
    required this.animeName,
    required this.animeViews,
    required this.animeClaps,
    required this.numberOfSeasons,
    required this.animeDescription,
  });
}
