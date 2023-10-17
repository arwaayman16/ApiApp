import 'package:bloc/bloc.dart';
import 'package:cats_api/data/model/cat.dart';
import 'package:cats_api/data/remote/cats_api.dart';
import 'package:meta/meta.dart';

part 'cats_event.dart';
part 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(CatsInitial()) {
    on<CatsEvent>((event, emit) async {
      if (event is getCatEvent) {
        emit(CatsLoading());
         List <Cat> cat = await CatApiImpl().getCat();
        emit(CatsLoded(cat: cat));
      }
      if (event is getMoreCatsEvent) {
        emit(CatsLoading());
       List <Cat> cat = await CatApiImpl().getMoreCat(event.catsCount);
        emit(CatsLoded(cat:cat ));
      }
    });
  }
}
