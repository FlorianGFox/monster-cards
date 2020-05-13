import 'package:flutter/material.dart';

import '../../../../core/styles/foxling_colors.dart';
import '../../../../core/styles/poppins_text_style.dart';
import '../../domain/entities/monster.dart';
import '../../domain/entities/monster_card_stats.dart';

class MonsterRow extends StatelessWidget {
  final MonsterCardStats monster;

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
          MonsterCard(monster),
          MonsterThumbnail(monster),
        ],
      ),
    );
  }
}

class MonsterThumbnail extends StatelessWidget {
  final MonsterCardStats monster;

  const MonsterThumbnail(this.monster, {Key key}) : super(key: key);

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
  final MonsterCardStats monster;

  const MonsterCard(this.monster, {Key key}) : super(key: key);

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
      child: MonsterCardContent(monster),
    );
  }
}

class MonsterCardContent extends StatelessWidget {
  final Monster monster;

  const MonsterCardContent(this.monster, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(75.0, 8.0, 8.0, 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(monster.name),
          Seperator(),
          ImportantStats(monster),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String headerText;

  const Header(this.headerText, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(headerText, style: PoppinsTextStyle.headerTextStyle);
  }
}

class Seperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 50.0,
      color: FoxlingColors.orange,
    );
  }
}

class ImportantStats extends StatelessWidget {
  final MonsterCardStats monster;

  const ImportantStats(this.monster, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ImportantStatText('Fight.: ${monster.fighting.value}'),
              ImportantStatText('Dmg: ${monster.dmg}'),
              ImportantStatText('Notice: ${monster.notice.value}'),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ImportantStatText('Parry: ${monster.parry}'),
              ImportantStatText('Tough.: ${monster.toughness}'),
              ImportantStatText('Pace: ${monster.pace}'),
            ],
          ),
        ),
      ],
    );
  }
}

class ImportantStatText extends StatelessWidget {
  final String text;

  const ImportantStatText(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: PoppinsTextStyle.subHeaderTextStyle);
  }
}
