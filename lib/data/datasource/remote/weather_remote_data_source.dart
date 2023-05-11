import 'dart:io';

import 'package:dio/dio.dart';
import 'package:open_weather/core/constants/api_url.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/error/exceptions.dart';
import 'package:open_weather/domain/entities/general_weather.dart';
import 'package:open_weather/domain/usecases/get_general_weather_usecase.dart';

abstract class WeatherRemoteDataSource {
  Future<GeneralWeather> getGeneralWeather(GetGeneralWeatherParams params);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final Dio client;
  WeatherRemoteDataSourceImpl(this.client);

  @override
  Future<GeneralWeather> getGeneralWeather(GetGeneralWeatherParams params) async {
    try {
      Map<String, dynamic> queryParam = {
        'lat': params.position.latitude,
        'lon': params.position.longitude,
        'appid': ApiUrl.appId,
      };

      final response = await client.get(
        ApiUrl.baseUrl,
        queryParameters: queryParam,
        options: Options(headers: {}),
      );

      final Map<String, dynamic> responseData = response.data;
      final data = GeneralWeather.fromJson(responseData);
      return data;
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        throw ServerExceptions(MessagesConstants.somethingWentWrong);
      } else if (e.type == DioErrorType.unknown && e.message!.contains("SocketException")) {
        throw const SocketException('');
      } else {
        throw ServerExceptions(MessagesConstants.somethingWentWrong);
      }
    }
  }
}
