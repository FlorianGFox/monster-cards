import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;

  @override
  List<Object> get props => properties;

  Failure([this.properties = const <dynamic>[]]);
}

class UnexpectedFailure extends Failure {}

class FileSystemFailure extends Failure {}
