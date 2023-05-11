import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/datetime_converter.dart';
import 'package:open_weather/core/utils/temp_converter.dart';
import 'package:open_weather/domain/entities/current_weather.dart';

class HourWeather extends StatelessWidget {
  final CurrentWeather? data;

  const HourWeather({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DatetimeConverter.hourMinuteOnly(DatetimeConverter.epochToDateTime(data?.dt ?? 0)),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Image.network(
          'https://openweathermap.org/img/wn/${data?.weather?.first.icon}.png',
          height: ConstantStyle.height40,
          fit: BoxFit.contain,
        ),
        Text(
          TempConverter.kelvinToCelcius(data?.temp ?? 0),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
