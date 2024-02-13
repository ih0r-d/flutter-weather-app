import 'package:flutter/material.dart';
import 'package:flutter_weather_app/pages/Home.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage()
      },
      // home: HomePage(),
    );
  }
}
