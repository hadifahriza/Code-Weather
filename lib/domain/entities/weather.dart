import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/core/types/types.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    Id? id,
    Main? main,
    Description? description,
    Icon? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
