import 'package:equatable/equatable.dart';
import 'package:monster_cards/core/enum/enum.dart';

class Attribute extends Equatable {
  final AttributeType name;
  final String value;

  Attribute({this.name, this.value});

  @override
  List<Object> get props => [name, value];
}

class AttributeType extends Enum<String> {
  static const AttributeType agility = AttributeType._("Agility");
  static const AttributeType smarts = AttributeType._("Smarts");
  static const AttributeType spirit = AttributeType._("Spirit");
  static const AttributeType strength = AttributeType._("Strength");
  static const AttributeType vigor = AttributeType._("Vigor");

  const AttributeType._(String value) : super(value);
}
