import 'package:flutter/material.dart';

class HourWeather extends StatelessWidget {
  const HourWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '9pm',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Icon(
            Icons.cloud,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
          Text(
            '72 F',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
