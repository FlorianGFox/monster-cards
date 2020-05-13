import 'package:monster_cards/core/enum/enum.dart';

class DiceType extends Enum<String> {
  static const DiceType d4 = const DiceType._("d4");
  static const DiceType d6 = const DiceType._("d6");
  static const DiceType d8 = const DiceType._("d8");
  static const DiceType d10 = const DiceType._("d10");
  static const DiceType d12 = const DiceType._("d12");

  const DiceType._(String value) : super(value);
}
