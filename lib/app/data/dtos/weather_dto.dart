import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required String date,
    required String weather,
    required String description,
    required double temperature,
    required String icon,
    required String windSpeed,
  }) = _WeatherDto;

  factory WeatherDto.fromDataBase(Map<String, dynamic> db) {
    return WeatherDto(
      date: db['dt'].toString(),
      weather: db['weather'][0]['main'],
      description: db['weather'][0]['description'],
      temperature: db['temp']['day'].toDouble(),
      icon: db['weather'][0]['icon'],
      windSpeed: db['wind_speed'].toString(),
    );
  }

  factory WeatherDto.fromWeatherDayRequest(Map<String, dynamic> db) {
    return WeatherDto(
      date: db['dt'].toString(),
      weather: db['weather'][0]['main'],
      description: db['weather'][0]['description'],
      temperature: db['temp'].toDouble(),
      icon: db['weather'][0]['icon'],
      windSpeed: db['wind_speed'].toString(),
    );
  }
}
