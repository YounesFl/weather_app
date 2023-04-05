import 'package:dartz/dartz.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/repositories/weather_repository.dart';
import 'usecase.dart';

class GetWeatherCurrentDay
    implements UseCase<Future<Either<Failure, List<Weather>>>, PositionData> {
  GetWeatherCurrentDay({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Future<Either<Failure, List<Weather>>> call(PositionData position) async {
    final result = await _weatherRepository.getCurrentDayWeather(position);
    return result;
  }
}
