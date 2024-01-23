// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoData _$InfoDataFromJson(Map<String, dynamic> json) {
  return _InfoData.fromJson(json);
}

/// @nodoc
mixin _$InfoData {
  MainData? get main => throw _privateConstructorUsedError;
  List<WeatherData>? get weather => throw _privateConstructorUsedError;
  WindData? get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDataCopyWith<InfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDataCopyWith<$Res> {
  factory $InfoDataCopyWith(InfoData value, $Res Function(InfoData) then) =
      _$InfoDataCopyWithImpl<$Res, InfoData>;
  @useResult
  $Res call({MainData? main, List<WeatherData>? weather, WindData? wind});

  $MainDataCopyWith<$Res>? get main;
  $WindDataCopyWith<$Res>? get wind;
}

/// @nodoc
class _$InfoDataCopyWithImpl<$Res, $Val extends InfoData>
    implements $InfoDataCopyWith<$Res> {
  _$InfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainData?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDataCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainDataCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDataCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindDataCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InfoDataImplCopyWith<$Res>
    implements $InfoDataCopyWith<$Res> {
  factory _$$InfoDataImplCopyWith(
          _$InfoDataImpl value, $Res Function(_$InfoDataImpl) then) =
      __$$InfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainData? main, List<WeatherData>? weather, WindData? wind});

  @override
  $MainDataCopyWith<$Res>? get main;
  @override
  $WindDataCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$InfoDataImplCopyWithImpl<$Res>
    extends _$InfoDataCopyWithImpl<$Res, _$InfoDataImpl>
    implements _$$InfoDataImplCopyWith<$Res> {
  __$$InfoDataImplCopyWithImpl(
      _$InfoDataImpl _value, $Res Function(_$InfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
  }) {
    return _then(_$InfoDataImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainData?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoDataImpl implements _InfoData {
  _$InfoDataImpl({this.main, final List<WeatherData>? weather, this.wind})
      : _weather = weather;

  factory _$InfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoDataImplFromJson(json);

  @override
  final MainData? main;
  final List<WeatherData>? _weather;
  @override
  List<WeatherData>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WindData? wind;

  @override
  String toString() {
    return 'InfoData(main: $main, weather: $weather, wind: $wind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoDataImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, main, const DeepCollectionEquality().hash(_weather), wind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoDataImplCopyWith<_$InfoDataImpl> get copyWith =>
      __$$InfoDataImplCopyWithImpl<_$InfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoDataImplToJson(
      this,
    );
  }
}

abstract class _InfoData implements InfoData {
  factory _InfoData(
      {final MainData? main,
      final List<WeatherData>? weather,
      final WindData? wind}) = _$InfoDataImpl;

  factory _InfoData.fromJson(Map<String, dynamic> json) =
      _$InfoDataImpl.fromJson;

  @override
  MainData? get main;
  @override
  List<WeatherData>? get weather;
  @override
  WindData? get wind;
  @override
  @JsonKey(ignore: true)
  _$$InfoDataImplCopyWith<_$InfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
