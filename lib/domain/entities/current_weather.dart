import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/domain/entities/weather.dart';
import 'package:open_weather/core/types/types.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    Dt? dt,
    Sunrise? sunrise,
    Sunset? sunset,
    Moonrise? moonrise,
    Moonset? moonset,
    MoonPhase? moon_phase,
    Temp? temp,
    FeelsLike? feels_like,
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
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}
