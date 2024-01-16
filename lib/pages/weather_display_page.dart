import 'package:flutter/material.dart';
import 'package:my_weather_app/Icons/weather_icon.dart';
import 'package:my_weather_app/pages/additional_info_page.dart';

class WeatherDisplayPage extends StatelessWidget {
  const WeatherDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    String city = "Manila";
    String currentDateTime = "Tuesday 12.02 PM";
    String weatherType = "Sunny";
    String tempInCel = "31";
    String windspeed = "12kph";
    String precipitation = "2%";
    String humidity = "83%";
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Location
            Container(
              margin: const EdgeInsets.all(20.0),
              alignment: MediaQuery.of(context).size.width > 450
                  ? Alignment.topLeft
                  : Alignment.center,
              child: Column(
                children: [
                  Text(
                    city,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    currentDateTime,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            //weather details
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  WeatherIcon(weatherType: weatherType),
                  const SizedBox(height: 25),
                  Text(
                    '$tempInCel°C',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    weatherType,
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),
            //other details
            Container(
              width: MediaQuery.of(context).size.width > 450
                  ? 400
                  : MediaQuery.of(context).size.width,
              alignment: MediaQuery.of(context).size.width > 450
                  ? Alignment.bottomRight
                  : Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfoItem(
                      icon: Icons.air, label: "Wind", value: windspeed),
                  const Text("|"),
                  AdditionalInfoItem(
                      icon: Icons.cloudy_snowing,
                      label: "Precipitation",
                      value: precipitation),
                  const Text("|"),
                  AdditionalInfoItem(
                      icon: Icons.water_drop,
                      label: "Humidity",
                      value: humidity),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
