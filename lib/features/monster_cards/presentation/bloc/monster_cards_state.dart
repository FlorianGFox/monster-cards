part of 'monster_cards_bloc.dart';

abstract class MonsterCardsState extends Equatable {
  const MonsterCardsState();
}

class Empty extends MonsterCardsState {
  @override
  List<Object> get props => [];
}

class Loading extends MonsterCardsState {
  @override
  List<Object> get props => [];
}

class Loaded extends MonsterCardsState {
  final List<Monster> monsters;

  Loaded(this.monsters);

  @override
  List<Object> get props => [];
}

class Error extends MonsterCardsState {
  @override
  List<Object> get props => [];
}
