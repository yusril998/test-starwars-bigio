import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Operation { userData }

abstract class MainState {}

class MainInitial extends MainState {}

class MainSuccess extends MainState {
  final bool result;

  MainSuccess(this.result);
}

class MainFailed extends MainState {
  final String error;
  MainFailed(this.error);
}

class MainEvent {
  final int index;
  MainEvent(this.index);
}

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial());
  @override
  MainState get initialState {
    return MainInitial();
  }

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    bool ret = sp.getBool("isLogin") ?? false;
    print(event.index);
    if (ret) {
      yield MainSuccess(ret);
    } else {
      yield MainFailed("ret");
    }
  }
}
