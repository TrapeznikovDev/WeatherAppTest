import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data.g.dart';
part 'weather_data.freezed.dart';

@freezed
class WeatherData with _$WeatherData {
  factory WeatherData({
    int? id,
    String? main,
    String? description,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}