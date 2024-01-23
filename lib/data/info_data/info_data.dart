import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/main_data/main_data.dart';
import 'package:weather_app/data/weather_data/weather_data.dart';
import 'package:weather_app/data/wind_data/wind_data.dart';

part 'info_data.g.dart';

part 'info_data.freezed.dart';

@freezed
class InfoData with _$InfoData {
  factory InfoData({
    MainData? main,
    List<WeatherData>? weather,
    WindData? wind,
  }) = _InfoData;

  factory InfoData.fromJson(Map<String, dynamic> json) =>
      _$InfoDataFromJson(json);
}
