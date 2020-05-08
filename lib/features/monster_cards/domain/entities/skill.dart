import 'package:equatable/equatable.dart';

class Skill extends Equatable {
  final String name;
  final String value;

  Skill({this.name, this.value});

  @override
  List<Object> get props => [name, value];
}
