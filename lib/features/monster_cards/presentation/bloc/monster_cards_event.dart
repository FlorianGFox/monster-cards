part of 'monster_cards_bloc.dart';

abstract class MonsterCardsEvent extends Equatable {
  const MonsterCardsEvent();
}

class GetAllMonstersEvent extends MonsterCardsEvent {
  @override
  List<Object> get props => [];
}
