import 'package:dio/dio.dart';
import 'api_endpoints.dart';

class ApiProvider {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      queryParameters: {"access_key": "fc817ed19d0e4b6c915d2c126bd63838"},
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  Future<dynamic> getWeather(query) async {
    return await dio
        .get(
          ApiEndPoints.current,
          queryParameters: query,
        )
        .then((value) => value, onError: (error) => error.response);
  }
}
