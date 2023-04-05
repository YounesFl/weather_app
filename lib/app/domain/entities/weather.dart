import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String date,
    required String weather,
    required String description,
    required double temperature,
    required String icon,
    required String windSpeed,
  }) = _Weather;
}
