import 'package:flutter/material.dart';
import 'package:my_weather_app/pages/weather_display_page.dart';
import 'package:my_weather_app/theme/dark_mode.dart';
import 'package:my_weather_app/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherDisplayPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
