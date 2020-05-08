import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

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
    //Todo implement
    throw UnimplementedError();
  }
}
