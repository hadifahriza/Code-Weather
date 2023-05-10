import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/domain/entities/current_weather.dart';
import 'package:open_weather/domain/entities/minute_weather.dart';
import 'package:open_weather/core/types/types.dart';

part 'general_weather.freezed.dart';
part 'general_weather.g.dart';

@freezed
class GeneralWeather with _$GeneralWeather {
  const factory GeneralWeather({
    required Lat lat,
    required Lon lon,
    required Timezone timezone,
    required TimezoneOffset timezone_offset,
    required CurrentWeather current,
    required List<MinuteWeather> minutely,
    required List<CurrentWeather> hourly,
    required List<CurrentWeather> daily,
  }) = _GeneralWeather;

  factory GeneralWeather.fromJson(Map<String, dynamic> json) => _$GeneralWeatherFromJson(json);
}
