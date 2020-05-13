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
        child: _buildRows(),
      ),
    );
  }

  Widget _buildRows() {
    return SingleChildScrollView(
      child: Column(
        children: monsters.map((m) => MonsterRow(monster: m)).toList(),
      ),
    );
  }
}
