import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/domain/entities/temp_daily.dart';
import 'package:open_weather/domain/entities/weather.dart';
import 'package:open_weather/core/types/types.dart';

part 'daily_weather.freezed.dart';
part 'daily_weather.g.dart';

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    Dt? dt,
    Sunrise? sunrise,
    Sunset? sunset,
    Moonrise? moonrise,
    Moonset? moonset,
    TempDaily? temp,
    TempDaily? feels_like,
    Pressure? pressure,
    Humidity? humidity,
    DewPoint? dew_point,
    Uvi? uvi,
    Clouds? clouds,
    Visibility? visibility,
    WindSpeed? wind_speed,
    WindDeg? wind_deg,
    WindGust? wind_gust,
    List<Weather>? weather,
    Pop? pop,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) => _$DailyWeatherFromJson(json);
}
