import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/length_converter.dart';
import 'package:open_weather/core/utils/temp_converter.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: ConstantStyle.padding10, horizontal: ConstantStyle.padding10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(ConstantStyle.opacity50),
        borderRadius: BorderRadius.circular(ConstantStyle.radius10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wind: ${context.read<WeatherBloc>().state.generalWeather?.current?.wind_speed?.toStringAsFixed(1)} m/s SSE',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Humidity: ${context.read<WeatherBloc>().state.generalWeather?.current?.humidity}%',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'UV index: ${context.read<WeatherBloc>().state.generalWeather?.current?.uvi}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: ConstantStyle.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pressure: ${context.read<WeatherBloc>().state.generalWeather?.current?.pressure} hPa',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Visibility: ${LengthConverter.mToKm((context.read<WeatherBloc>().state.generalWeather?.current?.visibility ?? 0).toDouble())} km',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Dew point: ${TempConverter.kelvinToCelcius(context.read<WeatherBloc>().state.generalWeather?.current?.dew_point ?? 0)}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
