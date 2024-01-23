// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainData _$MainDataFromJson(Map<String, dynamic> json) {
  return _MainData.fromJson(json);
}

/// @nodoc
mixin _$MainData {
  double? get temp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDataCopyWith<MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDataCopyWith<$Res> {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) then) =
      _$MainDataCopyWithImpl<$Res, MainData>;
  @useResult
  $Res call({double? temp, int? humidity});
}

/// @nodoc
class _$MainDataCopyWithImpl<$Res, $Val extends MainData>
    implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainDataImplCopyWith<$Res>
    implements $MainDataCopyWith<$Res> {
  factory _$$MainDataImplCopyWith(
          _$MainDataImpl value, $Res Function(_$MainDataImpl) then) =
      __$$MainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? temp, int? humidity});
}

/// @nodoc
class __$$MainDataImplCopyWithImpl<$Res>
    extends _$MainDataCopyWithImpl<$Res, _$MainDataImpl>
    implements _$$MainDataImplCopyWith<$Res> {
  __$$MainDataImplCopyWithImpl(
      _$MainDataImpl _value, $Res Function(_$MainDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$MainDataImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainDataImpl implements _MainData {
  _$MainDataImpl({this.temp, this.humidity});

  factory _$MainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDataImplFromJson(json);

  @override
  final double? temp;
  @override
  final int? humidity;

  @override
  String toString() {
    return 'MainData(temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDataImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      __$$MainDataImplCopyWithImpl<_$MainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDataImplToJson(
      this,
    );
  }
}

abstract class _MainData implements MainData {
  factory _MainData({final double? temp, final int? humidity}) = _$MainDataImpl;

  factory _MainData.fromJson(Map<String, dynamic> json) =
      _$MainDataImpl.fromJson;

  @override
  double? get temp;
  @override
  int? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
