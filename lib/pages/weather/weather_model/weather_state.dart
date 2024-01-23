part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _Loading;

  const factory WeatherState.loaded(InfoData info) = _Loaded;

  const factory WeatherState.error(String message) = _Error;

  const factory WeatherState.internetError(String message) = _InternetError;
}
