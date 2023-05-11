import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/domain/entities/current_weather.dart';

import 'hour_weather.dart';

class HourList extends StatelessWidget {
  final List<CurrentWeather>? data;

  const HourList({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ConstantStyle.height80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: data?.length ?? 0,
        itemBuilder: (context, index) {
          return HourWeather(data: data?[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: ConstantStyle.width20),
      ),
    );
  }
}
