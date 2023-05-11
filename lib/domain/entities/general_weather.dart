import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/domain/entities/current_weather.dart';
import 'package:open_weather/domain/entities/daily_weather.dart';
import 'package:open_weather/domain/entities/minute_weather.dart';
import 'package:open_weather/core/types/types.dart';

part 'general_weather.freezed.dart';
part 'general_weather.g.dart';

@freezed
class GeneralWeather with _$GeneralWeather {
  const factory GeneralWeather({
    Lat? lat,
    Lon? lon,
    Timezone? timezone,
    TimezoneOffset? timezone_offset,
    CurrentWeather? current,
    List<MinuteWeather>? minutely,
    List<CurrentWeather>? hourly,
    List<DailyWeather>? daily,
  }) = _GeneralWeather;

  factory GeneralWeather.fromJson(Map<String, dynamic> json) => _$GeneralWeatherFromJson(json);
}
