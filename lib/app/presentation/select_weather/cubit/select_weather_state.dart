import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/domain/entities/data_state.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';

part 'select_weather_state.freezed.dart';

@freezed
class SelectWeatherState with _$SelectWeatherState {
  const factory SelectWeatherState({
    @Default(DataState<List<Weather>>.initial())
        DataState<List<Weather>> getWeatherState,
    @Default(DataState<List<Prediction>?>.initial())
        DataState<List<Prediction>?> getPlacesState,
    @Default(DataState<PositionData?>.initial())
        DataState<PositionData?> getPlacePositionState,
    int? selectedDay,
    @Default(PositionData(longitude: 0.0, latitude: 0.0))
        PositionData positionData,
    @Default([]) List<Prediction>? places,
    @Default('') String placeId,
    DateTime? selectedDayTime,
    Weather? weatherToDisplay,
  }) = _SelectWeatherState;
}
