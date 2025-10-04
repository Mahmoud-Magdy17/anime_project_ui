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
            "Detective Conan, also known internationally as Case Closed, is a long-running Japanese detective anime that began in 1996. The story follows Shinichi Kudo, a highly skilled teenage detective who is transformed into a child after being poisoned by a mysterious organization. Under the alias Conan Edogawa, he continues to solve complex murder cases while searching for a cure and uncovering the secrets of the Black Organization. With clever mysteries, suspenseful storytelling, and a mix of humor and action, Detective Conan remains one of the most iconic detective anime series worldwide.",
        animeImagePath: 'assets/images/conan_image.jpg',
        animeCategory: ["Mystery", "Detective"],
      ),
      AnimeAllDetails(
        animeName: "Demon Slayer",
        animeViews: 780,
        animeClaps: 540,
        numberOfSeasons: 3,
        animeDescription:
            "Demon Slayer: Kimetsu no Yaiba follows the story of Tanjiro Kamado, a kind-hearted boy living in Taisho-era Japan whose family is brutally slaughtered by demons, leaving his sister Nezuko transformed into a demon herself. Determined to save her and avenge his family, Tanjiro joins the Demon Slayer Corps, a secret organization dedicated to eradicating demons. The anime is widely acclaimed for its breathtaking animation, emotional depth, and intense battles, as Tanjiro faces powerful foes while learning the true strength of compassion, perseverance, and sacrifice.",
        animeImagePath: 'assets/images/demon_slayer_image.jpg',
        animeCategory: ["Action", "Supernatural", "Dark Fantasy"],
      ),
      AnimeAllDetails(
        animeName: "Dragon Ball",
        animeViews: 1200,
        animeClaps: 890,
        numberOfSeasons: 9,
        animeDescription:
            "Dragon Ball is one of the most legendary and influential anime franchises of all time. Created by Akira Toriyama, the story begins with the young martial artist Goku, a cheerful boy with a mysterious origin, who sets out on adventures to find the seven Dragon Balls that summon the mighty dragon Shenron. Over the years, the series evolves into epic sagas filled with unforgettable battles, iconic transformations like Super Saiyan, and legendary villains such as Frieza, Cell, and Majin Buu. Known for its action-packed storytelling, humor, and themes of friendship and perseverance, Dragon Ball continues to inspire generations of anime fans.",
        animeImagePath: 'assets/images/dragon_ball_image.jpg',
        animeCategory: ["Action", "Adventure"],
      ),
      AnimeAllDetails(
        animeName: "Hunter x Hunter",
        animeViews: 650,
        animeClaps: 420,
        numberOfSeasons: 6,
        animeDescription:
            "Hunter x Hunter tells the story of Gon Freecss, a cheerful and determined boy who dreams of becoming a Hunter, a licensed professional who seeks rare treasures, uncovers secrets, and takes on dangerous challenges. Inspired by his absent father, who is a legendary Hunter, Gon sets out on a journey filled with peril, friendship, and discovery. Along the way, he meets Killua, a skilled assassin; Leorio, an aspiring doctor; and Kurapika, a survivor seeking justice. Known for its deep storytelling, complex characters, and thrilling battles, Hunter x Hunter stands out as a masterpiece that explores morality, ambition, and the true meaning of strength.",
        animeImagePath: 'assets/images/hunter_x_hunter_image.jpg',
        animeCategory: ["Adventure", "Fantasy"],
      ),
    ];
  }
}
