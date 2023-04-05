import 'package:weather_app/app/data/dtos/weather_dto.dart';
import 'package:weather_app/app/data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'package:weather_app/app/domain/entities/weather.dart';

class WeatherDtoMapperImpl implements WeatherDtoMapper {
  @override
  Weather toDomain(WeatherDto dto) {
    return Weather(
        date: dto.date,
        description: dto.description,
        temperature: dto.temperature,
        weather: dto.weather,
        icon: dto.icon,
        windSpeed: dto.windSpeed);
  }
}
