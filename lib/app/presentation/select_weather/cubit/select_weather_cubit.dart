import 'package:bloc/bloc.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/data_state.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/usecases/get_place_position.dart';
import 'package:weather_app/app/domain/usecases/get_places.dart';
import 'package:weather_app/app/domain/usecases/get_weather.dart';
import 'package:weather_app/app/presentation/select_weather/cubit/select_weather_state.dart';

class SelectWeatherCubit extends Cubit<SelectWeatherState> {
  SelectWeatherCubit({
    required GetPlaces getPlaces,
    required GetPlacePosition getPlacePosition,
    required GetWeather getWeather,
  })  : _getPlaces = getPlaces,
        _getPlacePosition = getPlacePosition,
        _getWeather = getWeather,
        // ignore: prefer_const_constructors
        super(SelectWeatherState(
            getWeatherState: const DataState.initial(),
            getPlacesState: const DataState.initial(),
            getPlacePositionState: const DataState.initial()));

  final GetPlaces _getPlaces;
  final GetPlacePosition _getPlacePosition;
  final GetWeather _getWeather;

  Future<void> getPlaces(String place) async {
    emit(state.copyWith(getPlacesState: const DataState.pending()));

    final result = await _getPlaces(place);

    result.fold(
      (failure) =>
          emit(state.copyWith(getPlacesState: DataState.error(failure))),
      (places) => emit(state.copyWith(
          getPlacesState: DataState.complete(places), places: places)),
    );
  }

  Future<void> getPlacePosition() async {
    emit(state.copyWith(
        getPlacePositionState: const DataState.pending(), places: null));

    final result = await _getPlacePosition(state.placeId);

    result.fold(
      (failure) =>
          emit(state.copyWith(getPlacePositionState: DataState.error(failure))),
      (position) async {
        emit(state.copyWith(
            getPlacePositionState: DataState.complete(position)));
        await _getWeatherData(position);
      },
    );
  }

  Future<void> _getWeatherData(PositionData? position) async {
    emit(state.copyWith(getWeatherState: const DataState.pending()));
    if (position != null) {
      final params = GetWeatherParams(position, DateTime.now());
      final result = await _getWeather(params);
      result.fold(
        (failure) =>
            emit(state.copyWith(getWeatherState: DataState.error(failure))),
        (weatherData) => emit(
            state.copyWith(getWeatherState: DataState.complete(weatherData))),
      );
    } else {
      emit(state.copyWith(
          getWeatherState: DataState.error(Failure(
        title: 'Impossible de récupérer la météo pour cette position',
      ))));
    }
  }

  void refreshSearchForm() => emit(
      state.copyWith(places: null, getWeatherState: const DataState.initial()));

  void refreshPlaceId(String placeId) {
    emit(state.copyWith(
      placeId: placeId,
      places: null,
      getWeatherState: const DataState.initial(),
      weatherToDisplay: null,
      selectedDay: null,
    ));
  }

  void refreshSelectedDay(int selectedDay, Weather weather) =>
      emit(state.copyWith(selectedDay: selectedDay, weatherToDisplay: weather));
}
