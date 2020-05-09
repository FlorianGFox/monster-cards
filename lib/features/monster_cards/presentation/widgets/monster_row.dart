import 'package:flutter/material.dart';
import 'package:monster_cards/core/styles/foxling_colors.dart';
import 'package:monster_cards/features/monster_cards/domain/entities/monster.dart';
import 'package:monster_cards/features/monster_cards/presentation/widgets/home_body.dart';

class MonsterRow extends StatelessWidget {
  final Monster monster;

  const MonsterRow({
    Key key,
    @required this.monster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          MonsterCard(),
          MonsterThumbnail(),
        ],
      ),
    );
  }
}

class MonsterThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.centerLeft,
      child: CircleAvatar(
        backgroundImage:
            monster.imagePath.isNotEmpty ? AssetImage(monster.imagePath) : null,
        backgroundColor: FoxlingColors.orange,
        radius: 52.0,
      ),
    );
  }
}

class MonsterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: FoxlingColors.blueGrey,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );
  }
}
