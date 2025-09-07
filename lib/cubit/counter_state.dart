class CounterState {
  int count;

  CounterState(this.count);

  CounterState copyWith({int? count}) {
    return CounterState(this.count = count ?? this.count);
  }
}
