import 'package:whetherapp/api/api_provider.dart';

class ApiRepository {
  ApiProvider _apiProvider = ApiProvider();

  Future<dynamic> getWeather(query) {
    return _apiProvider.getWeather(query);
  }
}
