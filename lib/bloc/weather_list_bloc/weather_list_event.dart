import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class WeatherListViewEvent extends Equatable {
  const WeatherListViewEvent();
}

class WeatherListEvent extends WeatherListViewEvent {
  final String searchKeyWord;

  WeatherListEvent({@required this.searchKeyWord});

  @override
  String toString() => 'WeatherListEvent';

  @override
  List<Object> get props => [];
}

