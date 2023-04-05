import 'package:dartz/dartz.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/repositories/weather_repository.dart';
import 'usecase.dart';

class GetPlaces
    implements UseCase<Future<Either<Failure, List<Prediction>?>>, String> {
  GetPlaces({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Future<Either<Failure, List<Prediction>?>> call(String place) async {
    final result = await _weatherRepository.getPlaces(place);
    return result;
  }
}
