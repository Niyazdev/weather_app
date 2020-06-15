import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:whetherapp/repository/weather_list_repo.dart';
import './bloc.dart';

class WeatherListViewBloc extends Bloc<WeatherListViewEvent, WeatherListState> {
  WeatherMapRepo _weatherListRepo = WeatherMapRepo();

  @override
  WeatherListState get initialState => WeatherListInitialState();

  @override
  Stream<WeatherListState> mapEventToState(
    WeatherListViewEvent event,
  ) async* {
    if (event is WeatherListEvent) {
      yield WeatherListLoadingState();
      final dynamic response =
          await _weatherListRepo.weatherList(event.searchKeyWord);
      if (response.containsKey('success') && !response['success']) {
        yield WeatherListFailureState();
      } else {
        yield WeatherListSuccessState(
          response: response,
        );
      }
    }
  }
}
