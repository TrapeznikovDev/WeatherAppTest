import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/info_data/info_data.dart';
import 'package:weather_app/shared/repository/repository.dart';

part 'weather_state.dart';

part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final AppRepository _repo;

  WeatherCubit(this._repo) : super(const WeatherState.loading());

  Future<void> load(String cityName) async {
    emit(const WeatherState.loading());
    try {
      final connection = await InternetAddress.lookup('example.com');
      if (connection.isNotEmpty && connection[0].rawAddress.isNotEmpty) {
        final result = await _repo.getWeather(cityName);
        result
            .doOnSuccess((InfoData value) => emit(WeatherState.loaded(value)))
            .doOnError((message, exception) =>
                emit(const WeatherState.error('Ошибка получения данных')));
      }
    } on SocketException catch (e) {
      emit(WeatherState.internetError(e.message));
    }
  }
}
