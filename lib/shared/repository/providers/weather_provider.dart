import 'package:dio/dio.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/data/info_data/info_data.dart';
import 'package:weather_app/shared/strings.dart';
import '../../../providers/network/interceptors.dart';

class WeatherRemoteSource {
  late final Dio _dio;

  WeatherRemoteSource() {
    _dio = Dio()
      ..options = BaseOptions(baseUrl: Strings.baseUrl)
      ..interceptors.add(LogWriterInterceptor());
  }

  Future<Result<InfoData>> getWeather(cityName) async {
    try {
      final response = await _dio.get(Strings.weatherUrl, queryParameters: {
        'q': cityName,
        'appid': Strings.apiKey,
        'units': 'metric'
      });
      final data = response.data;
      final weather = InfoData.fromJson(data);
      return Success(weather);
    } on DioException catch (dioError, _) {
      return Failure(message: dioError.message, exception: dioError);
    } catch (e, _) {
      return Failure(message: e.toString());
    }
  }
}
