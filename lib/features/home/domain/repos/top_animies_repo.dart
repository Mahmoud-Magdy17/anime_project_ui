import 'package:ui_project/features/anime/domain/entities/anime_all_details.dart';

abstract class TopAnimiesRepo {
  List<AnimeAllDetails> getTopAnimiesList();
}
