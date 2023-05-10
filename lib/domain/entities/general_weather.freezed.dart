// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralWeather _$GeneralWeatherFromJson(Map<String, dynamic> json) {
  return _GeneralWeather.fromJson(json);
}

/// @nodoc
mixin _$GeneralWeather {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  int? get timezone_offset => throw _privateConstructorUsedError;
  CurrentWeather? get current => throw _privateConstructorUsedError;
  List<MinuteWeather>? get minutely => throw _privateConstructorUsedError;
  List<CurrentWeather>? get hourly => throw _privateConstructorUsedError;
  List<DailyWeather>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralWeatherCopyWith<GeneralWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralWeatherCopyWith<$Res> {
  factory $GeneralWeatherCopyWith(
          GeneralWeather value, $Res Function(GeneralWeather) then) =
      _$GeneralWeatherCopyWithImpl<$Res, GeneralWeather>;
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezone_offset,
      CurrentWeather? current,
      List<MinuteWeather>? minutely,
      List<CurrentWeather>? hourly,
      List<DailyWeather>? daily});

  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class _$GeneralWeatherCopyWithImpl<$Res, $Val extends GeneralWeather>
    implements $GeneralWeatherCopyWith<$Res> {
  _$GeneralWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
    Object? current = freezed,
    Object? minutely = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_offset: freezed == timezone_offset
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      minutely: freezed == minutely
          ? _value.minutely
          : minutely // ignore: cast_nullable_to_non_nullable
              as List<MinuteWeather>?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeather>?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeatherCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeneralWeatherCopyWith<$Res>
    implements $GeneralWeatherCopyWith<$Res> {
  factory _$$_GeneralWeatherCopyWith(
          _$_GeneralWeather value, $Res Function(_$_GeneralWeather) then) =
      __$$_GeneralWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezone_offset,
      CurrentWeather? current,
      List<MinuteWeather>? minutely,
      List<CurrentWeather>? hourly,
      List<DailyWeather>? daily});

  @override
  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_GeneralWeatherCopyWithImpl<$Res>
    extends _$GeneralWeatherCopyWithImpl<$Res, _$_GeneralWeather>
    implements _$$_GeneralWeatherCopyWith<$Res> {
  __$$_GeneralWeatherCopyWithImpl(
      _$_GeneralWeather _value, $Res Function(_$_GeneralWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
    Object? current = freezed,
    Object? minutely = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$_GeneralWeather(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_offset: freezed == timezone_offset
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      minutely: freezed == minutely
          ? _value._minutely
          : minutely // ignore: cast_nullable_to_non_nullable
              as List<MinuteWeather>?,
      hourly: freezed == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeather>?,
      daily: freezed == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralWeather implements _GeneralWeather {
  const _$_GeneralWeather(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezone_offset,
      this.current,
      final List<MinuteWeather>? minutely,
      final List<CurrentWeather>? hourly,
      final List<DailyWeather>? daily})
      : _minutely = minutely,
        _hourly = hourly,
        _daily = daily;

  factory _$_GeneralWeather.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralWeatherFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezone_offset;
  @override
  final CurrentWeather? current;
  final List<MinuteWeather>? _minutely;
  @override
  List<MinuteWeather>? get minutely {
    final value = _minutely;
    if (value == null) return null;
    if (_minutely is EqualUnmodifiableListView) return _minutely;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CurrentWeather>? _hourly;
  @override
  List<CurrentWeather>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeather>? _daily;
  @override
  List<DailyWeather>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GeneralWeather(lat: $lat, lon: $lon, timezone: $timezone, timezone_offset: $timezone_offset, current: $current, minutely: $minutely, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralWeather &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezone_offset, timezone_offset) ||
                other.timezone_offset == timezone_offset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._minutely, _minutely) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lon,
      timezone,
      timezone_offset,
      current,
      const DeepCollectionEquality().hash(_minutely),
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralWeatherCopyWith<_$_GeneralWeather> get copyWith =>
      __$$_GeneralWeatherCopyWithImpl<_$_GeneralWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralWeatherToJson(
      this,
    );
  }
}

abstract class _GeneralWeather implements GeneralWeather {
  const factory _GeneralWeather(
      {final double? lat,
      final double? lon,
      final String? timezone,
      final int? timezone_offset,
      final CurrentWeather? current,
      final List<MinuteWeather>? minutely,
      final List<CurrentWeather>? hourly,
      final List<DailyWeather>? daily}) = _$_GeneralWeather;

  factory _GeneralWeather.fromJson(Map<String, dynamic> json) =
      _$_GeneralWeather.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get timezone;
  @override
  int? get timezone_offset;
  @override
  CurrentWeather? get current;
  @override
  List<MinuteWeather>? get minutely;
  @override
  List<CurrentWeather>? get hourly;
  @override
  List<DailyWeather>? get daily;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralWeatherCopyWith<_$_GeneralWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
