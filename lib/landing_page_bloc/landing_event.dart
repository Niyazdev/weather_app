import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetAllLocationWeatherEvent extends WeatherEvent {

  final String cityName;

  GetAllLocationWeatherEvent({@required this.cityName});

  @override
  String toString() => 'GetAllLocationWeatherEvent';

  @override
  List<Object> get props => [cityName];
}

class GetDetailedWeatherEvent extends WeatherEvent {

  final String cityName;

  GetDetailedWeatherEvent({@required this.cityName});

  @override
  String toString() => 'GetDetailedWeatherEvent';

  @override
  List<Object> get props => [cityName];
}
