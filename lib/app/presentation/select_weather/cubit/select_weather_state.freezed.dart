// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectWeatherState {
  DataState<List<Weather>> get getWeatherState =>
      throw _privateConstructorUsedError;
  DataState<List<Prediction>?> get getPlacesState =>
      throw _privateConstructorUsedError;
  DataState<PositionData?> get getPlacePositionState =>
      throw _privateConstructorUsedError;
  int? get selectedDay => throw _privateConstructorUsedError;
  PositionData get positionData => throw _privateConstructorUsedError;
  List<Prediction>? get places => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  DateTime? get selectedDayTime => throw _privateConstructorUsedError;
  Weather? get weatherToDisplay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectWeatherStateCopyWith<SelectWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectWeatherStateCopyWith<$Res> {
  factory $SelectWeatherStateCopyWith(
          SelectWeatherState value, $Res Function(SelectWeatherState) then) =
      _$SelectWeatherStateCopyWithImpl<$Res, SelectWeatherState>;
  @useResult
  $Res call(
      {DataState<List<Weather>> getWeatherState,
      DataState<List<Prediction>?> getPlacesState,
      DataState<PositionData?> getPlacePositionState,
      int? selectedDay,
      PositionData positionData,
      List<Prediction>? places,
      String placeId,
      DateTime? selectedDayTime,
      Weather? weatherToDisplay});

  $DataStateCopyWith<List<Weather>, $Res> get getWeatherState;
  $DataStateCopyWith<List<Prediction>?, $Res> get getPlacesState;
  $DataStateCopyWith<PositionData?, $Res> get getPlacePositionState;
  $PositionDataCopyWith<$Res> get positionData;
  $WeatherCopyWith<$Res>? get weatherToDisplay;
}

/// @nodoc
class _$SelectWeatherStateCopyWithImpl<$Res, $Val extends SelectWeatherState>
    implements $SelectWeatherStateCopyWith<$Res> {
  _$SelectWeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getWeatherState = null,
    Object? getPlacesState = null,
    Object? getPlacePositionState = null,
    Object? selectedDay = freezed,
    Object? positionData = null,
    Object? places = freezed,
    Object? placeId = null,
    Object? selectedDayTime = freezed,
    Object? weatherToDisplay = freezed,
  }) {
    return _then(_value.copyWith(
      getWeatherState: null == getWeatherState
          ? _value.getWeatherState
          : getWeatherState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Weather>>,
      getPlacesState: null == getPlacesState
          ? _value.getPlacesState
          : getPlacesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Prediction>?>,
      getPlacePositionState: null == getPlacePositionState
          ? _value.getPlacePositionState
          : getPlacePositionState // ignore: cast_nullable_to_non_nullable
              as DataState<PositionData?>,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int?,
      positionData: null == positionData
          ? _value.positionData
          : positionData // ignore: cast_nullable_to_non_nullable
              as PositionData,
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Prediction>?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDayTime: freezed == selectedDayTime
          ? _value.selectedDayTime
          : selectedDayTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weatherToDisplay: freezed == weatherToDisplay
          ? _value.weatherToDisplay
          : weatherToDisplay // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<List<Weather>, $Res> get getWeatherState {
    return $DataStateCopyWith<List<Weather>, $Res>(_value.getWeatherState,
        (value) {
      return _then(_value.copyWith(getWeatherState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<List<Prediction>?, $Res> get getPlacesState {
    return $DataStateCopyWith<List<Prediction>?, $Res>(_value.getPlacesState,
        (value) {
      return _then(_value.copyWith(getPlacesState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<PositionData?, $Res> get getPlacePositionState {
    return $DataStateCopyWith<PositionData?, $Res>(_value.getPlacePositionState,
        (value) {
      return _then(_value.copyWith(getPlacePositionState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionDataCopyWith<$Res> get positionData {
    return $PositionDataCopyWith<$Res>(_value.positionData, (value) {
      return _then(_value.copyWith(positionData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get weatherToDisplay {
    if (_value.weatherToDisplay == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weatherToDisplay!, (value) {
      return _then(_value.copyWith(weatherToDisplay: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectWeatherStateCopyWith<$Res>
    implements $SelectWeatherStateCopyWith<$Res> {
  factory _$$_SelectWeatherStateCopyWith(_$_SelectWeatherState value,
          $Res Function(_$_SelectWeatherState) then) =
      __$$_SelectWeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataState<List<Weather>> getWeatherState,
      DataState<List<Prediction>?> getPlacesState,
      DataState<PositionData?> getPlacePositionState,
      int? selectedDay,
      PositionData positionData,
      List<Prediction>? places,
      String placeId,
      DateTime? selectedDayTime,
      Weather? weatherToDisplay});

  @override
  $DataStateCopyWith<List<Weather>, $Res> get getWeatherState;
  @override
  $DataStateCopyWith<List<Prediction>?, $Res> get getPlacesState;
  @override
  $DataStateCopyWith<PositionData?, $Res> get getPlacePositionState;
  @override
  $PositionDataCopyWith<$Res> get positionData;
  @override
  $WeatherCopyWith<$Res>? get weatherToDisplay;
}

/// @nodoc
class __$$_SelectWeatherStateCopyWithImpl<$Res>
    extends _$SelectWeatherStateCopyWithImpl<$Res, _$_SelectWeatherState>
    implements _$$_SelectWeatherStateCopyWith<$Res> {
  __$$_SelectWeatherStateCopyWithImpl(
      _$_SelectWeatherState _value, $Res Function(_$_SelectWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getWeatherState = null,
    Object? getPlacesState = null,
    Object? getPlacePositionState = null,
    Object? selectedDay = freezed,
    Object? positionData = null,
    Object? places = freezed,
    Object? placeId = null,
    Object? selectedDayTime = freezed,
    Object? weatherToDisplay = freezed,
  }) {
    return _then(_$_SelectWeatherState(
      getWeatherState: null == getWeatherState
          ? _value.getWeatherState
          : getWeatherState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Weather>>,
      getPlacesState: null == getPlacesState
          ? _value.getPlacesState
          : getPlacesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Prediction>?>,
      getPlacePositionState: null == getPlacePositionState
          ? _value.getPlacePositionState
          : getPlacePositionState // ignore: cast_nullable_to_non_nullable
              as DataState<PositionData?>,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int?,
      positionData: null == positionData
          ? _value.positionData
          : positionData // ignore: cast_nullable_to_non_nullable
              as PositionData,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Prediction>?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDayTime: freezed == selectedDayTime
          ? _value.selectedDayTime
          : selectedDayTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weatherToDisplay: freezed == weatherToDisplay
          ? _value.weatherToDisplay
          : weatherToDisplay // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$_SelectWeatherState implements _SelectWeatherState {
  const _$_SelectWeatherState(
      {this.getWeatherState = const DataState<List<Weather>>.initial(),
      this.getPlacesState = const DataState<List<Prediction>?>.initial(),
      this.getPlacePositionState = const DataState<PositionData?>.initial(),
      this.selectedDay,
      this.positionData = const PositionData(longitude: 0.0, latitude: 0.0),
      final List<Prediction>? places = const [],
      this.placeId = '',
      this.selectedDayTime,
      this.weatherToDisplay})
      : _places = places;

  @override
  @JsonKey()
  final DataState<List<Weather>> getWeatherState;
  @override
  @JsonKey()
  final DataState<List<Prediction>?> getPlacesState;
  @override
  @JsonKey()
  final DataState<PositionData?> getPlacePositionState;
  @override
  final int? selectedDay;
  @override
  @JsonKey()
  final PositionData positionData;
  final List<Prediction>? _places;
  @override
  @JsonKey()
  List<Prediction>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String placeId;
  @override
  final DateTime? selectedDayTime;
  @override
  final Weather? weatherToDisplay;

  @override
  String toString() {
    return 'SelectWeatherState(getWeatherState: $getWeatherState, getPlacesState: $getPlacesState, getPlacePositionState: $getPlacePositionState, selectedDay: $selectedDay, positionData: $positionData, places: $places, placeId: $placeId, selectedDayTime: $selectedDayTime, weatherToDisplay: $weatherToDisplay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectWeatherState &&
            (identical(other.getWeatherState, getWeatherState) ||
                other.getWeatherState == getWeatherState) &&
            (identical(other.getPlacesState, getPlacesState) ||
                other.getPlacesState == getPlacesState) &&
            (identical(other.getPlacePositionState, getPlacePositionState) ||
                other.getPlacePositionState == getPlacePositionState) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.positionData, positionData) ||
                other.positionData == positionData) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.selectedDayTime, selectedDayTime) ||
                other.selectedDayTime == selectedDayTime) &&
            (identical(other.weatherToDisplay, weatherToDisplay) ||
                other.weatherToDisplay == weatherToDisplay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getWeatherState,
      getPlacesState,
      getPlacePositionState,
      selectedDay,
      positionData,
      const DeepCollectionEquality().hash(_places),
      placeId,
      selectedDayTime,
      weatherToDisplay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectWeatherStateCopyWith<_$_SelectWeatherState> get copyWith =>
      __$$_SelectWeatherStateCopyWithImpl<_$_SelectWeatherState>(
          this, _$identity);
}

abstract class _SelectWeatherState implements SelectWeatherState {
  const factory _SelectWeatherState(
      {final DataState<List<Weather>> getWeatherState,
      final DataState<List<Prediction>?> getPlacesState,
      final DataState<PositionData?> getPlacePositionState,
      final int? selectedDay,
      final PositionData positionData,
      final List<Prediction>? places,
      final String placeId,
      final DateTime? selectedDayTime,
      final Weather? weatherToDisplay}) = _$_SelectWeatherState;

  @override
  DataState<List<Weather>> get getWeatherState;
  @override
  DataState<List<Prediction>?> get getPlacesState;
  @override
  DataState<PositionData?> get getPlacePositionState;
  @override
  int? get selectedDay;
  @override
  PositionData get positionData;
  @override
  List<Prediction>? get places;
  @override
  String get placeId;
  @override
  DateTime? get selectedDayTime;
  @override
  Weather? get weatherToDisplay;
  @override
  @JsonKey(ignore: true)
  _$$_SelectWeatherStateCopyWith<_$_SelectWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
