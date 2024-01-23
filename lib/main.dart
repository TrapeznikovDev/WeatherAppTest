import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/home/home_page.dart';
import 'package:weather_app/pages/weather/weather_model/weather_cubit.dart';
import 'package:weather_app/shared/repository/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => AppRepository()),
      ],
      child: Builder(builder: (context) {
        final ColorScheme colorScheme = ColorScheme.fromSeed(
          brightness: MediaQuery.platformBrightnessOf(context),
          seedColor: Colors.indigo,
        );
        final newTextTheme = Theme.of(context).textTheme.apply(
              bodyColor: Colors.pink,
              displayColor: Colors.pink,
            );
        return BlocProvider(
            create: (_) => WeatherCubit(context.read()),
            child: MaterialApp(
              theme: ThemeData(
                textTheme: TextTheme(
                  bodyLarge: TextStyle(color: Colors.white),
                  bodyMedium: TextStyle(color: Colors.white),
                ).apply(
                  bodyColor: Colors.orange,
                  displayColor: Colors.blue,
                ),
              ),
              home: const HomePage(),
            ));
      }),
    );
  }
}
