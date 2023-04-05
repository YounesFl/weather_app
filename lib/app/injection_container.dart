import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/domain/usecases/get_current_weather_day.dart';
import 'package:weather_app/app/domain/usecases/get_place_position.dart';
import 'package:weather_app/app/domain/usecases/get_places.dart';
import 'package:weather_app/app/presentation/select_weather/cubit/select_weather_cubit.dart';
import 'package:weather_app/app/presentation/weather_day/cubit/weather_day_cubit.dart';
import 'data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'data/mapper.dart/impls/weather_dto_mapper_impl.dart';
import 'data/repositories/weather_repository_impl.dart';
import 'data/sources/weather/contrat/api_source.dart';
import 'data/sources/weather/weather_api_source.dart';
import 'domain/repositories/weather_repository.dart';
import 'domain/usecases/get_weather.dart';

final sl = GetIt.instance;

void init() {
  // ---------------------------------------------------------------------------
  // SOURCES
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<ApiSource>(
    () => WeatherAPISource(
      client: Dio(),
    ),
  );

  // ---------------------------------------------------------------------------
  // DTO MAPPERS
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<WeatherDtoMapper>(
    () => WeatherDtoMapperImpl(),
  );

  // ---------------------------------------------------------------------------
  // REPOSITORIES
  // ---------------------------------------------------------------------------
  sl.registerLazySingleton<WeatherRepository>(
    () => UserRepositoryImpl(
      apiSource: sl<ApiSource>(),
      weatherDtoMapper: sl<WeatherDtoMapper>(),
    ),
  );

  // ---------------------------------------------------------------------------
  // USE CASES
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<GetWeather>(
    () => GetWeather(
      weatherRepository: sl<WeatherRepository>(),
    ),
  );

  sl.registerLazySingleton<GetPlaces>(
    () => GetPlaces(
      weatherRepository: sl<WeatherRepository>(),
    ),
  );

  sl.registerLazySingleton<GetPlacePosition>(
    () => GetPlacePosition(
      weatherRepository: sl<WeatherRepository>(),
    ),
  );

  sl.registerLazySingleton<GetWeatherCurrentDay>(
    () => GetWeatherCurrentDay(
      weatherRepository: sl<WeatherRepository>(),
    ),
  );

  // ---------------------------------------------------------------------------
  // CUBITS
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<WeatherDayCubit>(
    () => WeatherDayCubit(
      getWeatherCurrentDay: sl<GetWeatherCurrentDay>(),
    ),
  );

  sl.registerLazySingleton<SelectWeatherCubit>(
    () => SelectWeatherCubit(
      getWeather: sl<GetWeather>(),
      getPlaces: sl<GetPlaces>(),
      getPlacePosition: sl<GetPlacePosition>(),
    ),
  );
}
