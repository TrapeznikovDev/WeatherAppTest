import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather/weather_page.dart';
import 'package:weather_app/shared/strings.dart';

const List<String> list = ['Moscow', 'Krasnodar', 'Krasnoyarsk', 'Omsk'];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appBarTittle),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Выберите интересующий вас город',
                  style: TextStyle(fontSize: 18)),
              DropdownButton(
                value: dropdownValue,
                elevation: 16,
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WeatherPage(cityName: dropdownValue)));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 300,
                  child: const Center(
                      child: Text(
                    'Узнать погоду',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
