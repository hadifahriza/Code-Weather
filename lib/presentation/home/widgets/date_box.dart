import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class DateBox extends StatelessWidget {
  const DateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantStyle.height40,
      padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(ConstantStyle.opacity50),
        borderRadius: BorderRadius.circular(ConstantStyle.radius10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Wed',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '10',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
