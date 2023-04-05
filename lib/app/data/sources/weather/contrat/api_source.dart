import 'dart:async';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/data/dtos/weather_dto.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';

abstract class ApiSource {
  Future<List<WeatherDto>> getCurrentDayWeather(PositionData position);
  Future<List<WeatherDto>> getWeather(
      PositionData position, DateTime selectedTime);
  Future<List<Prediction>?> getPlaces(String place);
  Future<PositionData?> getPlacePosition(String placeId);
}
