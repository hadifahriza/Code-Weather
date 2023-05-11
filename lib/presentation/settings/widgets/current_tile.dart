import 'package:flutter/material.dart';

class CurrentTile extends StatelessWidget {
  final String label;
  final String data;

  const CurrentTile({
    super.key,
    required this.label,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
