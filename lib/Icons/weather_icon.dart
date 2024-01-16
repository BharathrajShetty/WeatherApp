import 'package:flutter/material.dart';

class WeatherIcon extends StatelessWidget {
  final String weatherType;
  const WeatherIcon({super.key, required this.weatherType});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.sunny,
      color: Colors.orange,
      size: 50,
    );
  }
}
