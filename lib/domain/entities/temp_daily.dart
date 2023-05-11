import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/core/types/types.dart';

part 'temp_daily.freezed.dart';
part 'temp_daily.g.dart';

@freezed
class TempDaily with _$TempDaily {
  const factory TempDaily({
    Day? day,
    Min? min,
    Max? max,
    Night? night,
    Eve? eve,
    Morn? morn,
  }) = _TempDaily;

  factory TempDaily.fromJson(Map<String, dynamic> json) => _$TempDailyFromJson(json);
}
