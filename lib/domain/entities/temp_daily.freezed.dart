// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempDaily _$TempDailyFromJson(Map<String, dynamic> json) {
  return _TempDaily.fromJson(json);
}

/// @nodoc
mixin _$TempDaily {
  double? get day => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempDailyCopyWith<TempDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempDailyCopyWith<$Res> {
  factory $TempDailyCopyWith(TempDaily value, $Res Function(TempDaily) then) =
      _$TempDailyCopyWithImpl<$Res, TempDaily>;
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TempDailyCopyWithImpl<$Res, $Val extends TempDaily>
    implements $TempDailyCopyWith<$Res> {
  _$TempDailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempDailyCopyWith<$Res> implements $TempDailyCopyWith<$Res> {
  factory _$$_TempDailyCopyWith(
          _$_TempDaily value, $Res Function(_$_TempDaily) then) =
      __$$_TempDailyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class __$$_TempDailyCopyWithImpl<$Res>
    extends _$TempDailyCopyWithImpl<$Res, _$_TempDaily>
    implements _$$_TempDailyCopyWith<$Res> {
  __$$_TempDailyCopyWithImpl(
      _$_TempDaily _value, $Res Function(_$_TempDaily) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$_TempDaily(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempDaily implements _TempDaily {
  const _$_TempDaily(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory _$_TempDaily.fromJson(Map<String, dynamic> json) =>
      _$$_TempDailyFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'TempDaily(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempDaily &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempDailyCopyWith<_$_TempDaily> get copyWith =>
      __$$_TempDailyCopyWithImpl<_$_TempDaily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempDailyToJson(
      this,
    );
  }
}

abstract class _TempDaily implements TempDaily {
  const factory _TempDaily(
      {final double? day,
      final double? min,
      final double? max,
      final double? night,
      final double? eve,
      final double? morn}) = _$_TempDaily;

  factory _TempDaily.fromJson(Map<String, dynamic> json) =
      _$_TempDaily.fromJson;

  @override
  double? get day;
  @override
  double? get min;
  @override
  double? get max;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$$_TempDailyCopyWith<_$_TempDaily> get copyWith =>
      throw _privateConstructorUsedError;
}
