import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:monster_cards/core/error/failures.dart';
import 'package:monster_cards/features/monster_cards/data/datasource/local_data_source.dart';
import 'package:monster_cards/features/monster_cards/data/repositories/monster_repository_impl.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';

import '../../../../fixtures/monster_data.dart';

class MockLocalDataSource extends Mock implements LocalDataSource {}

class TestException extends Error {}

void main() {
  MonsterRepositoryImpl repository;
  MockLocalDataSource mockLocalDataSource;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    repository = MonsterRepositoryImpl(mockLocalDataSource);
  });

  List<Monster> tMonsters = monstersFixture;

  group('getAllMonsters', () {
    test('Returns monsters from local data source.', () async {
      //arrange
      when(mockLocalDataSource.getAllMonsters())
          .thenAnswer((_) async => tMonsters);
      //act
      final result = await repository.getAllMonsters();
      //assert
      verify(mockLocalDataSource.getAllMonsters());
      expect(result, Right(tMonsters));
    });

    test('Returns FileSystemFailure when an FileSystemException happens.',
        () async {
      //arrange
      when(mockLocalDataSource.getAllMonsters())
          .thenThrow(FileSystemException());
      //act
      final result = await repository.getAllMonsters();
      //assert
      expect(result, Left(FileSystemFailure()));
    });

    test('Returns UnexpectedFailure when an unknown exception happens.',
        () async {
      //arrange
      when(mockLocalDataSource.getAllMonsters()).thenThrow(TestException());
      //act
      final result = await repository.getAllMonsters();
      //assert
      expect(result, Left(UnexpectedFailure()));
    });
  });
}
