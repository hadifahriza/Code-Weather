import 'package:flutter/material.dart';
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
        itemCount: 24,
        itemBuilder: (context, index) {
          return const HourWeather();
        },
        separatorBuilder: (context, index) => const SizedBox(width: ConstantStyle.width20),
      ),
    );
  }
}
