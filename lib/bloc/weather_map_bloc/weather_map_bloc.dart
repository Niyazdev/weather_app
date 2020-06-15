import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:whetherapp/repository/weather_list_repo.dart';
import './bloc.dart';

class WeatherMapBloc extends Bloc<WeatherMapViewEvent, WeatherMapState> {
  WeatherMapRepo _weatherMapRepo = WeatherMapRepo();

  @override
  WeatherMapState get initialState => WeatherMapInitialState();

  @override
  Stream<WeatherMapState> mapEventToState(
    WeatherMapViewEvent event,
  ) async* {
    if (event is WeatherMapEvent) {
      yield WeatherMapLoadingState();
      final dynamic response =
          await _weatherMapRepo.weatherList(event.searchKeyWord);
      if (response.containsKey('success') && !response['success']) {
        yield WeatherMapFailureState();
      } else {
        yield WeatherMapSuccessState(
          response: response,
        );
      }
    }
  }
}
