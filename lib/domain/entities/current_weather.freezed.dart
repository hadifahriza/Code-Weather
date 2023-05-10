// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  int get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get moonrise => throw _privateConstructorUsedError;
  int? get moonset => throw _privateConstructorUsedError;
  int? get moon_phase => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  double get feels_like => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get dew_point => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;
  int get clouds => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get wind_speed => throw _privateConstructorUsedError;
  double get wind_deg => throw _privateConstructorUsedError;
  double get wind_gust => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {int dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      int? moon_phase,
      double? temp,
      double feels_like,
      int pressure,
      int humidity,
      double dew_point,
      double uvi,
      int clouds,
      int visibility,
      double wind_speed,
      double wind_deg,
      double wind_gust,
      List<Weather> weather,
      double? pop});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dew_point = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? wind_speed = null,
    Object? wind_deg = null,
    Object? wind_gust = null,
    Object? weather = null,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moon_phase: freezed == moon_phase
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dew_point: null == dew_point
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind_speed: null == wind_speed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double,
      wind_deg: null == wind_deg
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as double,
      wind_gust: null == wind_gust
          ? _value.wind_gust
          : wind_gust // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      int? moon_phase,
      double? temp,
      double feels_like,
      int pressure,
      int humidity,
      double dew_point,
      double uvi,
      int clouds,
      int visibility,
      double wind_speed,
      double wind_deg,
      double wind_gust,
      List<Weather> weather,
      double? pop});
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$_CurrentWeather>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dew_point = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? wind_speed = null,
    Object? wind_deg = null,
    Object? wind_gust = null,
    Object? weather = null,
    Object? pop = freezed,
  }) {
    return _then(_$_CurrentWeather(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moon_phase: freezed == moon_phase
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dew_point: null == dew_point
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind_speed: null == wind_speed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double,
      wind_deg: null == wind_deg
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as double,
      wind_gust: null == wind_gust
          ? _value.wind_gust
          : wind_gust // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {required this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moon_phase,
      this.temp,
      required this.feels_like,
      required this.pressure,
      required this.humidity,
      required this.dew_point,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.wind_speed,
      required this.wind_deg,
      required this.wind_gust,
      required final List<Weather> weather,
      this.pop})
      : _weather = weather;

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  final int dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? moonrise;
  @override
  final int? moonset;
  @override
  final int? moon_phase;
  @override
  final double? temp;
  @override
  final double feels_like;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dew_point;
  @override
  final double uvi;
  @override
  final int clouds;
  @override
  final int visibility;
  @override
  final double wind_speed;
  @override
  final double wind_deg;
  @override
  final double wind_gust;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final double? pop;

  @override
  String toString() {
    return 'CurrentWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moon_phase: $moon_phase, temp: $temp, feels_like: $feels_like, pressure: $pressure, humidity: $humidity, dew_point: $dew_point, uvi: $uvi, clouds: $clouds, visibility: $visibility, wind_speed: $wind_speed, wind_deg: $wind_deg, wind_gust: $wind_gust, weather: $weather, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moon_phase, moon_phase) ||
                other.moon_phase == moon_phase) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feels_like, feels_like) ||
                other.feels_like == feels_like) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dew_point, dew_point) ||
                other.dew_point == dew_point) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind_speed, wind_speed) ||
                other.wind_speed == wind_speed) &&
            (identical(other.wind_deg, wind_deg) ||
                other.wind_deg == wind_deg) &&
            (identical(other.wind_gust, wind_gust) ||
                other.wind_gust == wind_gust) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dt,
        sunrise,
        sunset,
        moonrise,
        moonset,
        moon_phase,
        temp,
        feels_like,
        pressure,
        humidity,
        dew_point,
        uvi,
        clouds,
        visibility,
        wind_speed,
        wind_deg,
        wind_gust,
        const DeepCollectionEquality().hash(_weather),
        pop
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final int dt,
      final int? sunrise,
      final int? sunset,
      final int? moonrise,
      final int? moonset,
      final int? moon_phase,
      final double? temp,
      required final double feels_like,
      required final int pressure,
      required final int humidity,
      required final double dew_point,
      required final double uvi,
      required final int clouds,
      required final int visibility,
      required final double wind_speed,
      required final double wind_deg,
      required final double wind_gust,
      required final List<Weather> weather,
      final double? pop}) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  int get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  int? get moonrise;
  @override
  int? get moonset;
  @override
  int? get moon_phase;
  @override
  double? get temp;
  @override
  double get feels_like;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  double get dew_point;
  @override
  double get uvi;
  @override
  int get clouds;
  @override
  int get visibility;
  @override
  double get wind_speed;
  @override
  double get wind_deg;
  @override
  double get wind_gust;
  @override
  List<Weather> get weather;
  @override
  double? get pop;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
