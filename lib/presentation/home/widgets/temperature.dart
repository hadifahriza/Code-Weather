import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/temp_converter.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.cloud),
            const SizedBox(width: ConstantStyle.width10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.read<WeatherBloc>().state.generalWeather?.current?.weather?.first.main ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  context.read<WeatherBloc>().state.generalWeather?.current?.weather?.first.description ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
        Text(
          TempConverter.kelvinToCelcius(context.read<WeatherBloc>().state.generalWeather?.current?.temp ?? 0),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          TempConverter.kelvinToCelcius(context.read<WeatherBloc>().state.generalWeather?.current?.feels_like ?? 0),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
