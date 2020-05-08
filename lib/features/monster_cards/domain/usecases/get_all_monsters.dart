import 'package:dartz/dartz.dart';
import 'package:monster_cards/features/monster_cards/domain/repositories/monster_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/monster.dart';

class GetAllMonsters extends UseCase<List<Monster>, NoParams> {
  final MonsterRepository monsterRepository;

  GetAllMonsters(this.monsterRepository);

  @override
  Future<Either<Failure, List<Monster>>> call(NoParams params) async {
    return await monsterRepository.getAllMonsters();
  }
}
