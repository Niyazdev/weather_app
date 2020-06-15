import 'dart:async';

import 'package:bloc/bloc.dart';
import './bloc.dart';

class LandingPageBloc extends Bloc<WeatherEvent, WeatherState> {

  //final LandingRepository _weatherRepo = LandingRepository();

  @override
  WeatherState get initialState => WeatherInitialState();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    yield WeatherLoadingState();
    if(event is GetAllLocationWeatherEvent){

    }
  }
}
