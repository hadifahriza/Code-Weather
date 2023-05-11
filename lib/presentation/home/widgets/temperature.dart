import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/temp_converter.dart';
import 'package:open_weather/domain/entities/current_weather.dart';

class Temperature extends StatelessWidget {
  final CurrentWeather? data;

  const Temperature({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://openweathermap.org/img/wn/${data?.weather?.first.icon}.png'),
            const SizedBox(width: ConstantStyle.width10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data?.weather?.first.main ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  data?.weather?.first.description ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
        Text(
          TempConverter.kelvinToCelcius(data?.temp ?? 0),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          TempConverter.kelvinToCelcius(data?.feels_like ?? 0),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
