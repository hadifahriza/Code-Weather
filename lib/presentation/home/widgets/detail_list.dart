import 'package:flutter/material.dart';
import 'package:open_weather/presentation/home/widgets/date_box.dart';

class DetailList extends StatelessWidget {
  final VoidCallback? onTap;

  const DetailList({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            children: [
              Expanded(
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return const DateBox();
                  },
                  separatorBuilder: (context, index) => const SizedBox(),
                ),
              ),
              IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.list),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Moderate rain',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Text(
            'Light breeze',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '83 / 70 F',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.cloud,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 8 * 62,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  'Precipitation $index',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                trailing: Text(
                  '0.251in',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
