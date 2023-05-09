import 'package:flutter/material.dart';

import 'date_tile.dart';

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7 * 40,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const DateTile();
        },
        separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
