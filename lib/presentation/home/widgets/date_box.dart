import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/datetime_converter.dart';
import 'package:open_weather/domain/entities/daily_weather.dart';

class DateBox extends StatelessWidget {
  final bool isSelected;
  final DailyWeather? data;
  final VoidCallback? onTap;

  const DateBox({
    super.key,
    this.data,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: ConstantStyle.height40,
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding5),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).colorScheme.secondary.withOpacity(ConstantStyle.opacity50) : Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(ConstantStyle.radius10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DatetimeConverter.dateNameOnly(DatetimeConverter.epochToDateTime(data?.dt ?? 0)),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              DatetimeConverter.dateOnly(DatetimeConverter.epochToDateTime(data?.dt ?? 0)),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
