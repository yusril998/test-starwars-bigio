import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/FilmsRespons/FilmsResponse.dart';

abstract class FilmsState {}

class FilmsInitial extends FilmsState {}

class FilmsLoading extends FilmsState {
  FilmsLoading();
}

class FilmsSuccess extends FilmsState {
  final List<FilmsResponse> data;

  FilmsSuccess(this.data);
}

class FilmsSearch extends FilmsState {
  final String s;

  FilmsSearch(this.s);
}

class FilmsFailed extends FilmsState {}

class FilmsEvent {
  final String index;

  FilmsEvent(this.index);
}

class FilmsBloc extends Bloc<FilmsEvent, FilmsState> {
  FilmsBloc() : super(FilmsInitial());
  final GitRepository repo = GitRepository();
    @override
    FilmsState get initialState {
      return FilmsInitial();
    }
  
    @override
    Stream<FilmsState> mapEventToState(FilmsEvent event) async* {
      print("object 1");
      yield FilmsLoading();
      try {
        var data = await repo.fetchFilm(event.index);
        print(data);
        List<FilmsResponse> listData = data;
        yield FilmsSuccess(listData);
      } catch (e) {
        List<FilmsResponse> listData = [];
        yield FilmsSuccess(listData);
      }
    }
}
 