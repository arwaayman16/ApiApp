part of 'cats_bloc.dart';

@immutable
sealed class CatsEvent {}

class getCatEvent implements CatsEvent {}

class getMoreCatsEvent implements CatsEvent {
  final int catsCount;

  getMoreCatsEvent({required this.catsCount});
}
