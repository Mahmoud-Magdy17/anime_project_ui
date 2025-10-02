import 'package:ui_project/features/home/domain/entities/top_character_entity.dart';
import 'package:ui_project/features/home/domain/repos/top_characters_repo.dart';

class TopCharactersRepoImpl extends TopCharactersRepo {
  @override
  List<TopCharacterEntity> getTopCharactersList() {
    return [
      TopCharacterEntity(
        imageAssetPath: "assets/images/gon_character.jpg",
        characterName: "Gon Freecss",
        characterAnime: "Hunter x Hunter",
      ),

      TopCharacterEntity(
        imageAssetPath: "assets/images/naroto_character.jpg",
        characterName: "Naruto Uzumaki",
        characterAnime: "Naruto",
      ),

      TopCharacterEntity(
        imageAssetPath: "assets/images/lofi_character.jpg",
        characterName: "Luffy",
        characterAnime: "One Piece",
      ),

      TopCharacterEntity(
        imageAssetPath: "assets/images/conan_character.jpg",
        characterName: "Conan Edogawa",
        characterAnime: "Detective Conan",
      ),

      TopCharacterEntity(
        imageAssetPath: "assets/images/goko_character.jpg",
        characterName: "Goku",
        characterAnime: "Dragon Balls",
      ),
    ];
  }
}
