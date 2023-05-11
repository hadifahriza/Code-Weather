import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';

import 'date_tile.dart';

class DateList extends StatelessWidget {
  final Function(int)? onTap;

  const DateList({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7 * 40,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return DateTile(
            data: context.read<WeatherBloc>().state.generalWeather?.daily?[index],
            onTap: onTap!(index),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
