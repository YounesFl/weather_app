import 'package:dartz/dartz.dart';
import 'package:weather_app/app/core/failure.dart';
import 'package:weather_app/app/domain/entities/position_data.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/repositories/weather_repository.dart';
import 'usecase.dart';

class GetWeatherParams {
  final PositionData position;
  final DateTime selectedTime;

  GetWeatherParams(this.position, this.selectedTime);
}

class GetWeather
    implements
        UseCase<Future<Either<Failure, List<Weather>>>, GetWeatherParams> {
  GetWeather({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Future<Either<Failure, List<Weather>>> call(GetWeatherParams params) async {
    final result = await _weatherRepository.getWeather(
        params.position, params.selectedTime);
    return result;
  }
}
