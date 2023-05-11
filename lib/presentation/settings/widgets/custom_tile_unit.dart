import 'package:flutter/material.dart';
import 'package:open_weather/presentation/settings/widgets/unit_box.dart';

class CustomTileUnit extends StatefulWidget {
  final String label;
  final List<String> data;

  const CustomTileUnit({
    super.key,
    required this.label,
    required this.data,
  });

  @override
  State<CustomTileUnit> createState() => _CustomTileUnitState();
}

class _CustomTileUnitState extends State<CustomTileUnit> {
  int selectedIndex = 0;

  void changeSelectedIndex(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  int getIndex(String value) {
    return widget.data.indexWhere((element) => element == value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: widget.data
                .map((e) => UnitBox(
                      label: e,
                      isSelected: getIndex(e) == selectedIndex,
                      onTap: () => changeSelectedIndex(getIndex(e)),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
