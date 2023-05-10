import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';

import 'hour_weather.dart';

class HourList extends StatelessWidget {
  const HourList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ConstantStyle.height60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: context.read<WeatherBloc>().state.generalWeather?.hourly?.length ?? 0,
        itemBuilder: (context, index) {
          return HourWeather(data: context.read<WeatherBloc>().state.generalWeather?.hourly?[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: ConstantStyle.width20),
      ),
    );
  }
}
