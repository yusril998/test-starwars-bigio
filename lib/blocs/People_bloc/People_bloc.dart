
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/PeopleRespons/PeopleResponse.dart';

abstract class PeopleState {}

class PeopleInitial extends PeopleState {}

class PeopleLoading extends PeopleState {
  PeopleLoading();
}

class PeopleSuccess extends PeopleState {
  final List<PeopleResponse> data;

  PeopleSuccess(this.data);
}

class PeopleSearch extends PeopleState {
  final String s;

  PeopleSearch(this.s);
}

class PeopleFailed extends PeopleState {}

class PeopleEvent {
  final String index;

  PeopleEvent(this.index);
}

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(PeopleInitial());
  final GitRepository repo = GitRepository();
    @override
    PeopleState get initialState {
      return PeopleInitial();
    }
  
    @override
    Stream<PeopleState> mapEventToState(PeopleEvent event) async* {
      print("object 1");
      yield PeopleLoading();
      try {
        var data = await repo.fetchPeople(event.index);
        print(data);
        List<PeopleResponse> listData = data;
        yield PeopleSuccess(listData);
      } catch (e) {
        List<PeopleResponse> listData = [];
        yield PeopleSuccess(listData);
      }
    }
}
 
 