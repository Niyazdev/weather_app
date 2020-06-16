import 'dart:convert';

import 'package:whetherapp/api/api_repository.dart';

abstract class WeatherListRepository {
  Future<dynamic> weatherList(searchKeyWord);
}

class WeatherMapRepo extends WeatherListRepository {
  ApiRepository _apiRepository = ApiRepository();

  @override
  Future<dynamic> weatherList(searchKeyWord) async {
    Map<String, dynamic> response = Map();
    try {
      Map<String, dynamic> query = Map();
      query['query'] = searchKeyWord;

      final result = await _apiRepository.getWeather(query);
      final jsonResponse = json.decode(result.toString());
      print('result = $jsonResponse');
      print('searchKeyWord = $searchKeyWord');
      return jsonResponse;
    } catch (e) {
      print(e);
      response['success'] = false;
      response['message'] = e.message;
    }
    return response;
  }
}
