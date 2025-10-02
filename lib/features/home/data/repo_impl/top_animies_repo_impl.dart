import 'package:ui_project/features/anime/domain/entities/anime_all_details.dart';
import 'package:ui_project/features/home/domain/repos/top_animies_repo.dart';

class TopAnimiesRepoImpl extends TopAnimiesRepo {
  @override
  List<AnimeAllDetails> getTopAnimiesList() {
    return const [
      AnimeAllDetails(
        animeName: "Detective Conan",
        animeViews: 603,
        animeClaps: 312,
        numberOfSeasons: 3,
        animeDescription:
            "Detective Conan, or Case Closed, is a Japanese detective anime that began in 1996...",
        animeImagePath: 'assets/images/conan_image.jpg',
        animeCategory: ["Mystery", "Detective"],
      ),
      AnimeAllDetails(
        animeName: "Demon Slayer",
        animeViews: 780,
        animeClaps: 540,
        numberOfSeasons: 3,
        animeDescription:
            "Demon Slayer follows Tanjiro Kamado, a boy who becomes a demon slayer...",
        animeImagePath: 'assets/images/demon_slayer_image.jpg',
        animeCategory: ["Action", "Supernatural"],
      ),
      AnimeAllDetails(
        animeName: "Dragon Ball",
        animeViews: 1200,
        animeClaps: 890,
        numberOfSeasons: 9,
        animeDescription:
            "Dragon Ball is a legendary action anime that follows Goku’s adventures...",
        animeImagePath: 'assets/images/dragon_ball_image.jpg',
        animeCategory: ["Action", "Adventure"],
      ),
      AnimeAllDetails(
        animeName: "Hunter x Hunter",
        animeViews: 650,
        animeClaps: 420,
        numberOfSeasons: 6,
        animeDescription:
            "Hunter x Hunter tells the story of Gon Freecss, a boy who aims to become a Hunter...",
        animeImagePath: 'assets/images/hunter_x_hunter_image.jpg',
        animeCategory: ["Adventure", "Fantasy"],
      ),
    ];
  }
}
