// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainDataImpl _$$MainDataImplFromJson(Map<String, dynamic> json) =>
    _$MainDataImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
    );

Map<String, dynamic> _$$MainDataImplToJson(_$MainDataImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };
