// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TempDaily _$$_TempDailyFromJson(Map<String, dynamic> json) => _$_TempDaily(
      day: (json['day'] as num?)?.toDouble(),
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      morn: (json['morn'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TempDailyToJson(_$_TempDaily instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
