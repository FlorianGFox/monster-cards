import 'package:flutter/material.dart';

import 'monster_row.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MonsterRow(),
        MonsterRow(),
        MonsterRow(),
      ],
    );
  }
}
