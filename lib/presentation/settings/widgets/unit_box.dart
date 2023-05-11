import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class UnitBox extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const UnitBox({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: ConstantStyle.height30,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(
                  isSelected ? ConstantStyle.opacity50 : ConstantStyle.opacity25,
                ),
            borderRadius: BorderRadius.circular(ConstantStyle.radius10),
          ),
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
