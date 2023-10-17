part of 'cats_bloc.dart';

@immutable
sealed class CatsState {}

final class CatsInitial extends CatsState {}

final class CatsLoading extends CatsState {}

final class CatsLoded extends CatsState {
   List <Cat>  cat;

  CatsLoded({required this.cat});
}
