import 'package:flutter/material.dart';
import 'package:monster_cards/core/styles/foxling_colors.dart';

class PoppinsTextStyle {
  static const baseTextStyle = TextStyle(fontFamily: 'Poppins');
  static const headerTextStyle = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
  static const regularTextStyle = TextStyle(
    fontFamily: 'Poppins',
    color: FoxlingColors.nearWhite,
    fontSize: 9.0,
    fontWeight: FontWeight.w400,
  );
  static const subHeaderTextStyle = TextStyle(
    fontFamily: 'Poppins',
    color: FoxlingColors.nearWhite,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );
}
