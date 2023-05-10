// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralWeather _$$_GeneralWeatherFromJson(Map<String, dynamic> json) =>
    _$_GeneralWeather(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezone_offset: json['timezone_offset'] as int,
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      minutely: (json['minutely'] as List<dynamic>)
          .map((e) => MinuteWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => CurrentWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => CurrentWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GeneralWeatherToJson(_$_GeneralWeather instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezone_offset,
      'current': instance.current,
      'minutely': instance.minutely,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
