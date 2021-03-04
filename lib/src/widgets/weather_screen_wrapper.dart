import 'package:flutter/material.dart';
import 'package:quize_app/src/models/weather.dart';
import 'package:quize_app/src/widgets/weather_card.dart';

import 'hourly_weather.dart';

class WeatherScreenWrapper extends StatelessWidget {
  final Weather weather;
  final List<Weather> hourlyWeather;

  const WeatherScreenWrapper({Key key, this.weather, this.hourlyWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          weather.cityName,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text('${weather.description}'),
        Spacer(),
        WeatherCard(
          title: "Now",
          temperature: weather.temperature,
          iconCode: weather.iconCode,
          temperatureFontSize: 64,
          iconScale: 1,
        ),
        Spacer(),
        HourlyWeather(hourlyWeather: this.hourlyWeather)
      ]),
    );
  }
}
