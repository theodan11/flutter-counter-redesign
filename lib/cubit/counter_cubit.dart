import 'package:counter_app_redesign/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increamentCount() {
    int count = state.count + 1;
    emit(state.copyWith(count: count));
  }

  void decreamentCount() {
    int count = state.count - 1;
    if (count <= 0) {
      count = 0;
    }
    emit(state.copyWith(count: count));
  }

  void reset() {
    emit(CounterState(0));
  }
}
