import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherListState extends Equatable {
  const WeatherListState();
}

class WeatherListInitialState extends WeatherListState {
  @override
  String toString() => 'WeatherListInitialState';

  @override
  List<Object> get props => [];
}

class WeatherListLoadingState extends WeatherListState {
  @override
  String toString() => 'WeatherListLoadingState';

  @override
  List<Object> get props => [];
}

/*--------------------------- Weather list success states 
-----------------------*/
class WeatherListSuccessState extends WeatherListState {
  final Map<String, dynamic> response;

  WeatherListSuccessState({this.response});

  @override
  String toString() => 'WeatherListSuccessState';

  @override
  List<Object> get props => [];
}

/*--------------------------- Weathter list failure states
-----------------------*/
class WeatherListFailureState extends WeatherListState {
  final Map<String, dynamic> response;

  WeatherListFailureState({this.response});

  @override
  String toString() => 'WeatherListFailureState';

  @override
  List<Object> get props => [];
}
