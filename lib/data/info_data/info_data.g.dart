// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoDataImpl _$$InfoDataImplFromJson(Map<String, dynamic> json) =>
    _$InfoDataImpl(
      main: json['main'] == null
          ? null
          : MainData.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: json['wind'] == null
          ? null
          : WindData.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InfoDataImplToJson(_$InfoDataImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
    };
