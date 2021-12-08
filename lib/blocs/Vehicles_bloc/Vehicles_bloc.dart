import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/repo/gitRepository.dart';

import 'package:test2/respons/VehiclesRespons/VehiclesResponse.dart';

abstract class VehiclesState {}

class VehiclesInitial extends VehiclesState {}

class VehiclesLoading extends VehiclesState {
  VehiclesLoading();
}

class VehiclesSuccess extends VehiclesState {
  final List<VehiclesResponse> data;

  VehiclesSuccess(this.data);
}

class VehiclesSearch extends VehiclesState {
  final String s;

  VehiclesSearch(this.s);
}

class VehiclesFailed extends VehiclesState {}

class VehiclesEvent {
  final String index;

  VehiclesEvent(this.index);
}

class VehiclesBloc extends Bloc<VehiclesEvent, VehiclesState> {
  VehiclesBloc() : super(VehiclesInitial());
  final GitRepository repo = GitRepository();
    @override
    VehiclesState get initialState {
      return VehiclesInitial();
    }
  
    @override
    Stream<VehiclesState> mapEventToState(VehiclesEvent event) async* {
      print("object 1");
      yield VehiclesLoading();
      try {
        var data = await repo.fetchVehicles(event.index);
        print(data);
        List<VehiclesResponse> listData = data;
        yield VehiclesSuccess(listData);
      } catch (e) {
        List<VehiclesResponse> listData = [];
        yield VehiclesSuccess(listData);
      }
    }
}
 