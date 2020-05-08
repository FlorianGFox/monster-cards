import 'package:equatable/equatable.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/dice.dart';

class Skill extends Equatable {
  final String name;
  final DiceType value;

  Skill({this.name, this.value});

  @override
  List<Object> get props => [name, value];
}
