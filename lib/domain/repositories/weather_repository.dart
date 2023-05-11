import 'package:open_weather/domain/entities/general_weather.dart';
import 'package:open_weather/domain/usecases/get_general_weather_usecase.dart';

abstract class WeatherRepository {
  Future<GeneralWeather> getGeneralWeather(GetGeneralWeatherParams params);
}
