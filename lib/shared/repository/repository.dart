import 'package:weather_app/data/info_data/info_data.dart';
import 'package:weather_app/shared/repository/providers/weather_provider.dart';
import '../../core/result.dart';

class AppRepository {
  final weatherProvider = WeatherRemoteSource();

  Future<Result<InfoData>> getWeather(String cityName) {
    return weatherProvider.getWeather(cityName);
  }
}
