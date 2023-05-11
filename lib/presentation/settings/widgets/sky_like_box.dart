import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/types/enumerated.dart';

class SkyLikeBox extends StatelessWidget {
  final SkyLike data;
  final bool isSelected;
  final VoidCallback? onTap;

  const SkyLikeBox({super.key, required this.data, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(
                isSelected ? ConstantStyle.opacity25 : ConstantStyle.opacity0,
              ),
          borderRadius: BorderRadius.circular(ConstantStyle.radius10),
        ),
        child: Column(
          children: [
            Image.network(
              'https://openweathermap.org/img/wn/${data.iconCode}.png',
              height: ConstantStyle.height60,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: ConstantStyle.height10),
            Text(
              data.value,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
