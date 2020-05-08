import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';

abstract class LocalDataSource {
  List<Monster> getAllMonsters();
}
