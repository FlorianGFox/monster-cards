import 'package:flutter/material.dart';
import 'package:monster_cards/core/enum/enum.dart';

class FoxlingColors extends Enum<Color> {
  static const darkGrey = const FoxlingColors._(Color(0xFF1D181F));
  static const blueGrey = const FoxlingColors._(Color(0xFF405159));
  static const brownGrey = const FoxlingColors._(Color(0xFF5C5656));
  static const lightGrey = const FoxlingColors._(Color(0xFF9BA7AA));
  static const nearWhite = const FoxlingColors._(Colors.white70);
  static const orange = const FoxlingColors._(Color(0xFFFF6600));

  const FoxlingColors._(Color value) : super(value);
}
