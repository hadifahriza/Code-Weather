import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/utils/datetime_converter.dart';
import 'package:open_weather/core/utils/temp_converter.dart';
import 'package:open_weather/domain/entities/daily_weather.dart';

class DateTile extends StatelessWidget {
  final DailyWeather? data;
  final VoidCallback? onTap;

  const DateTile({
    super.key,
    this.data,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: ConstantStyle.height30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DatetimeConverter.dateMonthOnly(DatetimeConverter.epochToDateTime(data?.dt ?? 0)),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              children: [
                Text(
                  TempConverter.kelvinToCelcius(data?.temp?.day ?? 0),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: ConstantStyle.width10),
                Image.network(
                  'https://openweathermap.org/img/wn/${data?.weather?.first.icon}.png',
                  height: ConstantStyle.height20,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: ConstantStyle.width10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: ConstantStyle.size16,
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(ConstantStyle.opacity50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
