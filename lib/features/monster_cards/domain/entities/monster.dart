import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'ability.dart';
import 'attribute.dart';
import 'monster_card_stats.dart';
import 'skill.dart';

export 'ability.dart';
export 'attribute.dart';
export 'skill.dart';

class Monster extends Equatable implements MonsterCardStats {
  final String group;
  final String name;
  final bool wildcard;
  final String description;
  final List<Attribute> attributes;
  final List<Skill> skills;
  final int pace;
  final int parry;
  final int toughness;
  final List<String> edges;
  final List<Ability> abilities;
  final String imagePath;
  final String dmg;
  final Skill fighting;
  final Skill notice;

  Monster({
    this.group = '',
    @required this.name,
    this.wildcard = false,
    this.description = '',
    @required this.attributes,
    this.skills = const [],
    this.pace = 6,
    @required this.parry,
    @required this.toughness,
    this.edges = const [],
    this.abilities = const [],
    this.imagePath = '',
    @required this.dmg,
    @required this.fighting,
    @required this.notice,
  });

  @override
  List<Object> get props => [
        group,
        name,
        wildcard,
        attributes,
        skills,
        pace,
        parry,
        toughness,
        edges,
        abilities,
      ];
}
