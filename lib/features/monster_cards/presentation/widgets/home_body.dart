import 'package:flutter/material.dart';

import '../../../../core/styles/foxling_colors.dart';
import '../../domain/entities/monster.dart';
import 'monster_row.dart';

class HomeBody extends StatelessWidget {
  final List<Monster> monsters;

  const HomeBody({Key key, this.monsters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: FoxlingColors.lightGrey,
        child: buildRows(),
      ),
    );
  }

  Widget buildRows() {
    return Column(
      children: <Widget>[
        for (var i = 0; i < monsters.length; i++)
          MonsterRow(monster: monsters[i]),
      ],
    );
  }
}
