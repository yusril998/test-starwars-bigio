import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/SpeciesRespons/SpeciesResponse.dart';

abstract class SpeciesState {}

class SpeciesInitial extends SpeciesState {}

class SpeciesLoading extends SpeciesState {
  SpeciesLoading();
}

class SpeciesSuccess extends SpeciesState {
  final List<SpeciesResponse> data;

  SpeciesSuccess(this.data);
}

class SpeciesSearch extends SpeciesState {
  final String s;

  SpeciesSearch(this.s);
}

class SpeciesFailed extends SpeciesState {}

class SpeciesEvent {
  final String index;

  SpeciesEvent(this.index);
}

class SpeciesBloc extends Bloc<SpeciesEvent, SpeciesState> {
  SpeciesBloc() : super(SpeciesInitial());
  final GitRepository repo = GitRepository();
    @override
    SpeciesState get initialState {
      return SpeciesInitial();
    }
  
    @override
    Stream<SpeciesState> mapEventToState(SpeciesEvent event) async* {
      print("object 1");
      yield SpeciesLoading();
      try {
        var data = await repo.fetchSpecies(event.index);
        print(data);
        List<SpeciesResponse> listData = data;
        yield SpeciesSuccess(listData);
      } catch (e) {
        List<SpeciesResponse> listData = [];
        yield SpeciesSuccess(listData);
      }
    }
}
 