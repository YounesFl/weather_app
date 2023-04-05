import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_data.freezed.dart';

@freezed
class PositionData with _$PositionData {
  const factory PositionData({
    required double longitude,
    required double latitude,
  }) = _PositionData;
}