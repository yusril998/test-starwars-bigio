import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class DashboardState {}

class DashboardInitial extends DashboardState {}


class DashboardEvent {
  final int index;

  DashboardEvent(this.index);
}

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial());

  @override
  DashboardState get initialState {
    return DashboardInitial();
  }

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
   
  }
}
