import 'package:dartz/dartz.dart';
import 'package:monster_cards/core/error/failures.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';

abstract class MonsterRepository {
  Future<Either<Failure, List<Monster>>> getAllMonsters();
}
