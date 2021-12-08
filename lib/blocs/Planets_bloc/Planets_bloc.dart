import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/PlanetsRespons/PlanetsResponse.dart';

abstract class PlanetsState {}

class PlanetsInitial extends PlanetsState {}

class PlanetsLoading extends PlanetsState {
  PlanetsLoading();
}

class PlanetsSuccess extends PlanetsState {
  final List<PlanetsResponse> data;

  PlanetsSuccess(this.data);
}

class PlanetsSearch extends PlanetsState {
  final String s;

  PlanetsSearch(this.s);
}

class PlanetsFailed extends PlanetsState {}

class PlanetsEvent {
  final String index;

  PlanetsEvent(this.index);
}

class PlanetsBloc extends Bloc<PlanetsEvent, PlanetsState> {
  PlanetsBloc() : super(PlanetsInitial());
  final GitRepository repo = GitRepository();
    @override
    PlanetsState get initialState {
      return PlanetsInitial();
    }
  
    @override
    Stream<PlanetsState> mapEventToState(PlanetsEvent event) async* {
      print("object 1");
      yield PlanetsLoading();
      try {
        var data = await repo.fetchPlanets(event.index);
        print(data);
        List<PlanetsResponse> listData = data;
        yield PlanetsSuccess(listData);
      } catch (e) {
        List<PlanetsResponse> listData = [];
        yield PlanetsSuccess(listData);
      }
    }
}
