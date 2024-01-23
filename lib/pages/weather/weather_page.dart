import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/weather/weather_model/weather_cubit.dart';

class WeatherPage extends StatelessWidget {
  final String cityName;

  const WeatherPage({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    context.read<WeatherCubit>().load(cityName);
    return Scaffold(
      appBar: AppBar(
          title: Text('Weather in $cityName'),
          backgroundColor: Colors.transparent),
      body: Center(
        child:
            BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
          return state.map(
            loading: (_) =>
                const CircularProgressIndicator(color: Colors.orange),
            error: (err) {
              return Text(err.message);
            },
            loaded: (loaded) {
              final info = loaded.info;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: getWeatherIcon(info.weather?.first.main ?? '')),
                  const SizedBox(height: 50),
                  Text('Скорость ветра: ${info.wind?.speed} м/с'),
                  Text('Влажность: ${info.main?.humidity}%'),
                  Text('Температура: ${info.main?.temp} градусов'),
                ],
              );
            },
            internetError: (_) {
              return const Center(
                  child: Text(
                'Интернет соединение отсутствует',
                style: TextStyle(color: Colors.red),
              ));
            },
          );
        }),
      ),
    );
  }

  Widget getWeatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'clear':
        return Image.asset('assets/sun.png');
      case 'scattered clouds':
        return Image.asset('assets/cloudy.png');
      case 'rain':
        return Image.asset('assets/rain.png');
      default:
        return Image.asset('assets/sun.png');
    }
  }
}
