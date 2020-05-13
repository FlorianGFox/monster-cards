import '../../domain/entities/monster.dart';

abstract class LocalDataSource {
  Future<List<Monster>> getAllMonsters();
}
