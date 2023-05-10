import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/core/types/types.dart';

part 'minute_weather.freezed.dart';
part 'minute_weather.g.dart';

@freezed
class MinuteWeather with _$MinuteWeather {
  const factory MinuteWeather({
    Dt? dt,
    Precipitation? precipitation,
  }) = _MinuteWeather;

  factory MinuteWeather.fromJson(Map<String, dynamic> json) => _$MinuteWeatherFromJson(json);
}
