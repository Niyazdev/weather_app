import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherMapState extends Equatable {
  const WeatherMapState();
}

class WeatherMapInitialState extends WeatherMapState {
  @override
  String toString() => 'WeatherMapInitialState';

  @override
  List<Object> get props => [];
}

class WeatherMapLoadingState extends WeatherMapState {
  @override
  String toString() => 'WeatherMapLoadingState';

  @override
  List<Object> get props => [];
}

/*--------------------------- Weather Map success states 
-----------------------*/
class WeatherMapSuccessState extends WeatherMapState {
  final Map<String, dynamic> response;

  WeatherMapSuccessState({this.response});

  @override
  String toString() => 'WeatherMapSuccessState';

  @override
  List<Object> get props => [];
}

/*--------------------------- Weather Map failure states
-----------------------*/
class WeatherMapFailureState extends WeatherMapState {
  final Map<String, dynamic> response;

  WeatherMapFailureState({this.response});

  @override
  String toString() => 'WeatherMapFailureState';

  @override
  List<Object> get props => [];
}
