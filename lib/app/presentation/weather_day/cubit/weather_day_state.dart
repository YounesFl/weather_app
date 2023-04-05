import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/app/domain/entities/data_state.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';

part 'weather_day_state.freezed.dart';

@freezed
class WeatherDayState with _$WeatherDayState {
  const factory WeatherDayState({
    @Default(DataState<List<Weather>>.initial())
        DataState<List<Weather>> getCurrentWeatherDayState,
    PositionData? position,
  }) = _WeatherDayState;
}
