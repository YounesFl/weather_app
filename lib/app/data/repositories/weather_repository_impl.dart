import 'package:dartz/dartz.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/repositories/weather_repository.dart';
import 'package:weather_app/app/data/sources/weather/contrat/api_source.dart';

class UserRepositoryImpl implements WeatherRepository {
  UserRepositoryImpl({
    required ApiSource apiSource,
    required WeatherDtoMapper weatherDtoMapper,
  })  : _apiSource = apiSource,
        _weatherDtoMapper = weatherDtoMapper;

  final ApiSource _apiSource;
  final WeatherDtoMapper _weatherDtoMapper;

  @override
  Future<Either<Failure, List<Weather>>> getWeather(
      PositionData position, DateTime selectedTime) async {
    try {
      final weatherDto = await _apiSource.getWeather(position, selectedTime);
      return Right(
          weatherDto.map((dto) => _weatherDtoMapper.toDomain(dto)).toList());
    } catch (e) {
      return Left(Failure(title: 'Impossible de récupérer la météo'));
    }
  }

  @override
  Future<Either<Failure, List<Prediction>?>> getPlaces(String place) async {
    try {
      final predictions = await _apiSource.getPlaces(place);
      if (predictions != null) {
        return Right(predictions);
      }
      return const Right(null);
    } catch (e) {
      return Left(
          Failure(title: 'Impossible de récupérer la liste de positions'));
    }
  }

  @override
  Future<Either<Failure, PositionData?>> getPlacePosition(
      String placeId) async {
    try {
      final result = await _apiSource.getPlacePosition(placeId);
      if (result != null) {
        return Right(result);
      }
      return const Right(null);
    } catch (e) {
      return Left(Failure(title: 'Impossible de récupérer la position'));
    }
  }

  @override
  Future<Either<Failure, List<Weather>>> getCurrentDayWeather(
      PositionData position) async {
    try {
      final weatherDto = await _apiSource.getCurrentDayWeather(position);
      return Right(
          weatherDto.map((dto) => _weatherDtoMapper.toDomain(dto)).toList());
    } catch (e) {
      return Left(Failure(title: 'Impossible de récupérer la météo du jour'));
    }
  }
}
