import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
