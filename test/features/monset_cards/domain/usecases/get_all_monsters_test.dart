import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:monster_cards/core/usecases/usecase.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';
import 'package:monster_cards/features/monster_cards/domain/repositories/monster_repository.dart';
import 'package:monster_cards/features/monster_cards/domain/usecases/get_all_monsters.dart';

class MockMonsterRepository extends Mock implements MonsterRepository {}

void main() {
  GetAllMonsters usecase;
  MockMonsterRepository mockMonsterRepository;

  setUp(() {
    mockMonsterRepository = MockMonsterRepository();
    usecase = GetAllMonsters(mockMonsterRepository);
  });

  final tMonsters = [
    Monster(
      name: 'Test Monster',
      parry: 2,
      toughness: 2,
      attributes: [],
      fighting: null,
      notice: null,
      dmg: null,
    )
  ];

  group('call', () {
    test('Returns monster from repository when called.', () async {
      //arrange
      when(mockMonsterRepository.getAllMonsters())
          .thenAnswer((_) async => Right(tMonsters));
      //act
      final result = await usecase(NoParams());
      //assert
      verify(mockMonsterRepository.getAllMonsters());
      expect(result, Right(tMonsters));
    });
  });
}
