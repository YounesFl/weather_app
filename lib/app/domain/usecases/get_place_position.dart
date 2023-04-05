import 'package:dartz/dartz.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/repositories/weather_repository.dart';
import 'usecase.dart';

class GetPlacePosition
    implements UseCase<Future<Either<Failure, PositionData?>>, String> {
  GetPlacePosition({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Future<Either<Failure, PositionData?>> call(String placeId) async {
    final result = await _weatherRepository.getPlacePosition(placeId);
    return result;
  }
}
