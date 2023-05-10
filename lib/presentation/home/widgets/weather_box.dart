import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'No Precipitation within an hour',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: ConstantStyle.height10),
        Container(
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
                    'Wind: 3.7mph SSE',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Humidity: 93%',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'UV index: 0.0',
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
                    'Pressure: 29.91inHg',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Visibility: 6.2mi',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Dew point: 70 F',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
