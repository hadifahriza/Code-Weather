import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/domain/entities/weather.dart';
import 'package:open_weather/core/types/types.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required Dt dt,
    Sunrise? sunrise,
    Sunset? sunset,
    Moonrise? moonrise,
    Moonset? moonset,
    MoonPhase? moon_phase,
    Temp? temp,
    required FeelsLike feels_like,
    required Pressure pressure,
    required Humidity humidity,
    required DewPoint dew_point,
    required Uvi uvi,
    required Clouds clouds,
    required Visibility visibility,
    required WindSpeed wind_speed,
    required WindDeg wind_deg,
    required WindGust wind_gust,
    required List<Weather> weather,
    Pop? pop,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}
