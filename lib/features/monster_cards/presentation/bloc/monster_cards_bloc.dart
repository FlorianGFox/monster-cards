import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:monster_cards/core/error/failures.dart';
import 'package:monster_cards/core/usecases/usecase.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';

import '../../domain/usecases/get_all_monsters.dart';

part 'monster_cards_event.dart';
part 'monster_cards_state.dart';

class MonsterCardsBloc extends Bloc<MonsterCardsEvent, MonsterCardsState> {
  GetAllMonsters getAll;

  MonsterCardsBloc({@required GetAllMonsters getAll}) : this.getAll = getAll;

  @override
  MonsterCardsState get initialState => Empty();

  @override
  Stream<MonsterCardsState> mapEventToState(
    MonsterCardsEvent event,
  ) async* {
    yield* _getAllMonsters();
  }

  Stream<MonsterCardsState> _getAllMonsters() async* {
    yield Loading();
    Either<Failure, List<Monster>> result = await getAll(NoParams());
    yield result.fold(
      (failure) => Error(),
      (monsters) => Loaded(monsters),
    );
  }
}
