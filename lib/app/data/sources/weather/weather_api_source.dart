import 'dart:async';
import 'package:dio/dio.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/data/dtos/weather_dto.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'contrat/api_source.dart';

class WeatherAPISource implements ApiSource {
  WeatherAPISource({
    required Dio client,
  }) : _client = client;

  final Dio _client;

  final apiKey = 'f6a3269279022b93429e32322e14be27';

  @override
  Future<List<WeatherDto>> getCurrentDayWeather(position) async {
    try {
      final lat = position.latitude;
      final lon = position.longitude;
      final result = await _client.get<void>(
          'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=daily&units=metric&appid=$apiKey&hourly=24');

      final data = getResponseData<Map<String, dynamic>>(result);

      final list = (data['hourly'] as List)
          .map((e) => e as Map<String, dynamic>)
          .toList();

      return list.map((db) => WeatherDto.fromWeatherDayRequest(db)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<WeatherDto>> getWeather(position, selectedTime) async {
    try {
      final lat = position.latitude;
      final lon = position.longitude;
      final result = await _client.get<void>(
          "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=minutely,hourly,current&appid=$apiKey");

      final data = getResponseData<Map<String, dynamic>>(result);

      final list = (data['daily'] as List)
          .map((e) => e as Map<String, dynamic>)
          .toList();

      return list.map((db) => WeatherDto.fromDataBase(db)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Prediction>?> getPlaces(String place) async {
    try {
      final GoogleMapsPlaces places =
          GoogleMapsPlaces(apiKey: 'AIzaSyDW9LLk9daLMiWnZgbmmPwAEjU7wsLc_wI');

      final response = await places.autocomplete(place);

      if (response.predictions.isNotEmpty) {
        return response.predictions;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PositionData?> getPlacePosition(String placeId) async {
    try {
      final GoogleMapsPlaces places =
          GoogleMapsPlaces(apiKey: 'AIzaSyDW9LLk9daLMiWnZgbmmPwAEjU7wsLc_wI');
      final response = await places.getDetailsByPlaceId(placeId);

      if (response.result.geometry != null) {
        return PositionData(
          longitude: response.result.geometry!.location.lng,
          latitude: response.result.geometry!.location.lat,
        );
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  T getResponseData<T>(Response response) {
    return response.data as T;
  }
}
