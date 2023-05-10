import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class DateTile extends StatelessWidget {
  final VoidCallback? onTap;

  const DateTile({
    super.key,
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
              'Tue May 09',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              children: [
                Text(
                  '84 / 70 F',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: ConstantStyle.width10),
                Icon(
                  Icons.cloud,
                  size: ConstantStyle.size20,
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(ConstantStyle.opacity50),
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
