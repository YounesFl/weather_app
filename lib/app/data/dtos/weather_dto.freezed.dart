// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherDto {
  String get date => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get windSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res, WeatherDto>;
  @useResult
  $Res call(
      {String date,
      String weather,
      String description,
      double temperature,
      String icon,
      String windSpeed});
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res, $Val extends WeatherDto>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weather = null,
    Object? description = null,
    Object? temperature = null,
    Object? icon = null,
    Object? windSpeed = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDtoCopyWith<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  factory _$$_WeatherDtoCopyWith(
          _$_WeatherDto value, $Res Function(_$_WeatherDto) then) =
      __$$_WeatherDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String weather,
      String description,
      double temperature,
      String icon,
      String windSpeed});
}

/// @nodoc
class __$$_WeatherDtoCopyWithImpl<$Res>
    extends _$WeatherDtoCopyWithImpl<$Res, _$_WeatherDto>
    implements _$$_WeatherDtoCopyWith<$Res> {
  __$$_WeatherDtoCopyWithImpl(
      _$_WeatherDto _value, $Res Function(_$_WeatherDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weather = null,
    Object? description = null,
    Object? temperature = null,
    Object? icon = null,
    Object? windSpeed = null,
  }) {
    return _then(_$_WeatherDto(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherDto implements _WeatherDto {
  const _$_WeatherDto(
      {required this.date,
      required this.weather,
      required this.description,
      required this.temperature,
      required this.icon,
      required this.windSpeed});

  @override
  final String date;
  @override
  final String weather;
  @override
  final String description;
  @override
  final double temperature;
  @override
  final String icon;
  @override
  final String windSpeed;

  @override
  String toString() {
    return 'WeatherDto(date: $date, weather: $weather, description: $description, temperature: $temperature, icon: $icon, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDto &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, weather, description, temperature, icon, windSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      __$$_WeatherDtoCopyWithImpl<_$_WeatherDto>(this, _$identity);
}

abstract class _WeatherDto implements WeatherDto {
  const factory _WeatherDto(
      {required final String date,
      required final String weather,
      required final String description,
      required final double temperature,
      required final String icon,
      required final String windSpeed}) = _$_WeatherDto;

  @override
  String get date;
  @override
  String get weather;
  @override
  String get description;
  @override
  double get temperature;
  @override
  String get icon;
  @override
  String get windSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}
