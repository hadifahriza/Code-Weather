import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class DetailTile extends StatelessWidget {
  const DetailTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ConstantStyle.height40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Precipitation',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            '0.133in',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
