import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/monster.dart';
import '../../domain/repositories/monster_repository.dart';
import '../datasource/local_data_source.dart';

class MonsterRepositoryImpl implements MonsterRepository {
  final LocalDataSource localDataSource;

  MonsterRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, List<Monster>>> getAllMonsters() async {
    try {
      final List<Monster> monsters = await localDataSource.getAllMonsters();
      return Right(monsters);
    } on FileSystemException {
      return Left(FileSystemFailure());
    } on Error {
      return Left(UnexpectedFailure());
    }
  }
}
