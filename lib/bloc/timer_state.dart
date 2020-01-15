import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class Ready extends TimerState {
  const Ready(int duration) : super(duration);

  @override
  String toString() => 'Ready { duration: $duration }';
}

class Paused extends TimerState {
  const Paused(int duration) : super(duration);

  @override
  String toString() => 'Paused { duration: $duration }';
}

class Running extends TimerState {
  const Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';
}

class Finished extends TimerState {
  const Finished() : super(0);
}


class FakeStateOne extends TimerState {
  const FakeStateOne(int duration) : super(duration);

  @override
  String toString() => 'FakeStateOne { duration: $duration }';
}

class FakeStateTwo extends TimerState {
  const FakeStateTwo(int duration) : super(duration);

  @override
  String toString() => 'FakeStateTwo { duration: $duration }';
}