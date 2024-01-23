import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_data.g.dart';

part 'main_data.freezed.dart';

@freezed
class MainData with _$MainData {
  factory MainData({
    double? temp,
    int? humidity,
  }) = _MainData;

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);
}
