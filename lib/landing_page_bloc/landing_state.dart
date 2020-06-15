import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitialState extends WeatherState {
  @override
  String toString() => 'WeatherInitialState';

  @override
  List<Object> get props => [];
}

class WeatherLoadingState extends WeatherState {
  const WeatherLoadingState();

  @override
  String toString() => 'AuthLoadingState';

  @override
  List<Object> get props => [];
}

class WeatherCheckSuccessState extends WeatherState {
  @override
  String toString() => 'WeatherCheckSuccessState';

  @override
  List<Object> get props => [];
}

class WeatherCheckFailureState extends WeatherState {
  @override
  String toString() => 'WeatherCheckFailureState';

  @override
  List<Object> get props => [];
}

class AuthLoginFailureState extends WeatherState {
  final Map<String, dynamic> params;
  final String message;

  AuthLoginFailureState({
    @required this.params,
    @required this.message,
  });

  @override
  String toString() => 'AuthLoginFailureState';

  @override
  List<Object> get props => [];
}
