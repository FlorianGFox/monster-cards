import 'package:equatable/equatable.dart';

import 'skill.dart';

export 'skill.dart';

class MonsterCardStats extends Equatable {
  final String name;
  final bool wildcard;
  final int pace;
  final int parry;
  final int toughness;
  final Skill fighting;
  final Skill notice;
  final String dmg;
  final String imagePath;

  MonsterCardStats(
      {this.name,
      this.wildcard,
      this.pace,
      this.parry,
      this.toughness,
      this.fighting,
      this.notice,
      this.dmg,
      this.imagePath});

  @override
  List<Object> get props => [
        name,
        wildcard,
        pace,
        parry,
        toughness,
        fighting,
        notice,
        dmg,
      ];
}
