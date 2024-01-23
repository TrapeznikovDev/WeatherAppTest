import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_data.g.dart';

part 'wind_data.freezed.dart';

@freezed
class WindData with _$WindData {
  factory WindData({
    double? speed,
  }) = _WindData;

  factory WindData.fromJson(Map<String, dynamic> json) =>
      _$WindDataFromJson(json);
}
