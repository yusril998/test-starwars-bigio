import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/StarshipRespons/StarshipResponse.dart';

abstract class StarshipState {}

class StarshipInitial extends StarshipState {}

class StarshipLoading extends StarshipState {
  StarshipLoading();
}

class StarshipSuccess extends StarshipState {
  final List<StarshipResponse> data;

  StarshipSuccess(this.data);
}

class StarshipSearch extends StarshipState {
  final String s;

  StarshipSearch(this.s);
}

class StarshipFailed extends StarshipState {}

class StarshipEvent {
  final String index;

  StarshipEvent(this.index);
}

class StarshipBloc extends Bloc<StarshipEvent, StarshipState> {
  StarshipBloc() : super(StarshipInitial());
  final GitRepository repo = GitRepository();
    @override
    StarshipState get initialState {
      return StarshipInitial();
    }
  
    @override
    Stream<StarshipState> mapEventToState(StarshipEvent event) async* {
      print("object 1");
      yield StarshipLoading();
      try {
        var data = await repo.fetchStarShip(event.index);
        print(data);
        List<StarshipResponse> listData = data;
        yield StarshipSuccess(listData);
      } catch (e) {
        List<StarshipResponse> listData = [];
        yield StarshipSuccess(listData);
      }
    }
}
 