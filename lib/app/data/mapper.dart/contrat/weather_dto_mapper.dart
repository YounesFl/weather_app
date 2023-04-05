import 'package:weather_app/app/data/dtos/weather_dto.dart';
import 'package:weather_app/app/domain/entities/weather.dart';

import 'dto_mapper.dart';

abstract class WeatherDtoMapper implements DtoMapper<Weather, WeatherDto> {
  /// Maps a [WeatherDto] object to a [Weather] object
  @override
  Weather toDomain(WeatherDto dto);
}
