import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.cloud),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overcast clouds',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Light breeze',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
        Text(
          '72 F',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Feels like 73 F',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
