import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/core/types/types.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required Id id,
    required Main main,
    required Description description,
    required Icon icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
