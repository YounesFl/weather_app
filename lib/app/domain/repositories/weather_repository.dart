import 'package:dartz/dartz.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';

import 'repository.dart';

abstract class WeatherRepository implements Repository {
  Future<Either<Failure, List<Weather>>> getCurrentDayWeather(
      PositionData position);
  Future<Either<Failure, List<Weather>>> getWeather(
      PositionData position, DateTime selectedTime);
  Future<Either<Failure, List<Prediction>?>> getPlaces(String place);
  Future<Either<Failure, PositionData?>> getPlacePosition(String placeId);
}
