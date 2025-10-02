import 'package:ui_project/features/home/domain/entities/top_character_entity.dart';

abstract class TopCharactersRepo {
  List<TopCharacterEntity> getTopCharactersList();
}
