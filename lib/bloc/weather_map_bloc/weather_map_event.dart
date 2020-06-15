import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class WeatherMapViewEvent extends Equatable {
  const WeatherMapViewEvent();
}

class WeatherMapEvent extends WeatherMapViewEvent {

  final String searchKeyWord;

  WeatherMapEvent({@required this.searchKeyWord});

  @override
  String toString() => 'WeatherMapEvent';

  @override
  List<Object> get props => [];
}
