import '../../domain/entities/ability.dart';
import '../../domain/entities/attribute.dart';
import '../../domain/entities/monster.dart';
import '../../domain/entities/skill.dart';
import 'local_data_source.dart';

class DummyDataSource implements LocalDataSource {
  final List<Monster> monsters = [
    Monster(
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
        notice: Skill(name: 'Notice', value: 'd8'),
        fighting: Skill(name: 'Fighting', value: 'd8'),
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
        dmg: 'd12+d6+2'),
    Monster(
      name: 'Bull',
      description: '''Dire wolves are very large and feral canines
                  often used by orcs as attack dogs. They may
                  also be found roaming in packs in the deepest,
                  darkest woods.''',
      attributes: [
        Attribute(name: AttributeType.agility, value: 'd8'),
        Attribute(name: AttributeType.smarts, value: 'd4'),
        Attribute(name: AttributeType.spirit, value: 'd6'),
        Attribute(name: AttributeType.strength, value: 'd8'),
        Attribute(name: AttributeType.vigor, value: 'd8'),
      ],
      skills: [
        Skill(name: 'Athletics', value: 'd8'),
        Skill(name: 'Fighting', value: 'd8'),
        Skill(name: 'Intimidation', value: 'd8'),
        Skill(name: 'Notice', value: 'd6'),
        Skill(name: 'Stealth', value: 'd8'),
      ],
      fighting: Skill(name: 'Fighting', value: 'd8'),
      notice: Skill(name: 'Notice', value: 'd6'),
      pace: 10,
      parry: 6,
      toughness: 6,
      edges: [
        'Alertness',
      ],
      abilities: [
        Ability(
          name: 'Bite',
          description: 'Str+d6',
        ),
        Ability(
          name: 'Speed',
          description: '''d10 running die.''',
        ),
      ],
      dmg: 'd8+d6',
    ),
  ];

  @override
  Future<List<Monster>> getAllMonsters() {
    return Future.value(monsters);
  }
}
