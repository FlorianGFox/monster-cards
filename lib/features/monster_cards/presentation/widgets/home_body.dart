import 'package:flutter/material.dart';
import '../../domain/entities/monster.dart';

import 'monster_row.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MonsterRow(monster: monster),
        MonsterRow(monster: monster),
        MonsterRow(monster: monster),
      ],
    );
  }
}

//! TODO: Delete. This is just a dummy monster to design the monster card.
Monster monster = Monster(
  name: 'Bear',
  description: '''This entry covers the larger ursines, such as
                    grizzlies, Kodiaks, and polar bears. A favored
                    tactic of all these bears is to grapple and bite
                    with their fierce fangs.''',
  attributes: [
    Attribute(name: AttributeType.agility, value: 'd6'),
    Attribute(name: AttributeType.smarts, value: 'd6'),
    Attribute(name: AttributeType.spirit, value: 'd8'),
    Attribute(name: AttributeType.strength, value: 'd12+2'),
    Attribute(name: AttributeType.vigor, value: 'd12'),
  ],
  skills: [
    Skill(name: 'Athletics', value: 'd8'),
    Skill(name: 'Fighting', value: 'd8'),
    Skill(name: 'Notice', value: 'd8'),
    Skill(name: 'Stealth', value: 'd8'),
  ],
  pace: 8,
  parry: 6,
  toughness: 10,
  edges: [
    'Brute',
  ],
  abilities: [
    Ability(
      name: 'Bite/Claws',
      description: 'Str+d6',
    ),
    Ability(
      name: 'Size 2',
      description: '''These creatures can stand up to 8′
                        tall and weigh over 1,000 pounds.''',
    ),
  ],
  imagePath: 'assets/images/bear.jpg',
);
