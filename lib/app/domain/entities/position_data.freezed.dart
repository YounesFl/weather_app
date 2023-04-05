// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PositionData {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionDataCopyWith<PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res, PositionData>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res, $Val extends PositionData>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionDataCopyWith<$Res>
    implements $PositionDataCopyWith<$Res> {
  factory _$$_PositionDataCopyWith(
          _$_PositionData value, $Res Function(_$_PositionData) then) =
      __$$_PositionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$_PositionDataCopyWithImpl<$Res>
    extends _$PositionDataCopyWithImpl<$Res, _$_PositionData>
    implements _$$_PositionDataCopyWith<$Res> {
  __$$_PositionDataCopyWithImpl(
      _$_PositionData _value, $Res Function(_$_PositionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_PositionData(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PositionData implements _PositionData {
  const _$_PositionData({required this.longitude, required this.latitude});

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'PositionData(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionData &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionDataCopyWith<_$_PositionData> get copyWith =>
      __$$_PositionDataCopyWithImpl<_$_PositionData>(this, _$identity);
}

abstract class _PositionData implements PositionData {
  const factory _PositionData(
      {required final double longitude,
      required final double latitude}) = _$_PositionData;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_PositionDataCopyWith<_$_PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}
