import 'package:equatable/equatable.dart';

import 'ability.dart';
import 'attribute.dart';
import 'skill.dart';

class Monster extends Equatable {
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

  Monster({
    this.group,
    this.name,
    this.wildcard,
    this.description,
    this.attributes,
    this.skills,
    this.pace,
    this.parry,
    this.toughness,
    this.edges,
    this.abilities,
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
