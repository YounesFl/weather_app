import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/data_state.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/usecases/get_current_weather_day.dart';
import 'package:weather_app/app/presentation/weather_day/cubit/weather_day_state.dart';

class WeatherDayCubit extends Cubit<WeatherDayState> {
  WeatherDayCubit({
    required GetWeatherCurrentDay getWeatherCurrentDay,
  })  : _getWeatherCurrentDay = getWeatherCurrentDay,
        // ignore: prefer_const_constructors
        super(WeatherDayState(getCurrentWeatherDayState: DataState.initial()));

  final GetWeatherCurrentDay _getWeatherCurrentDay;

  Future<void> onGetCurrentWeatherDayPressed() async {
    await _getLocation();

    if (state.position != null) {
      emit(
          state.copyWith(getCurrentWeatherDayState: const DataState.pending()));
      final result = await _getWeatherCurrentDay(state.position!);

      result.fold(
        (failure) => emit(state.copyWith(
            getCurrentWeatherDayState: DataState.error(failure))),
        (weatherData) => emit(state.copyWith(
            getCurrentWeatherDayState: DataState.complete(weatherData))),
      );
    } else {
      emit(state.copyWith(
          getCurrentWeatherDayState: DataState.error(
              Failure(title: 'Impossible de récupérer la position'))));
    }
  }

  Future<void> _getLocation() async {
    final isPermissionGranted = await _handleLocationPermission();

    if (isPermissionGranted) {
      Position getCurrentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      final position = PositionData(
          longitude: getCurrentPosition.longitude,
          latitude: getCurrentPosition.latitude);
      emit(state.copyWith(position: position));
    }
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(state.copyWith(
          getCurrentWeatherDayState: DataState.error(Failure(
              title:
                  "Le service de localisation est désactivé. Merci d'activer le service."))));

      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(state.copyWith(
            getCurrentWeatherDayState: DataState.error(
                Failure(title: 'La localisation est refusée.'))));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      emit(state.copyWith(
          getCurrentWeatherDayState: DataState.error(Failure(
              title:
                  "L'autorisation de localisation est définitivement refusée"))));

      return false;
    }
    return true;
  }
}
