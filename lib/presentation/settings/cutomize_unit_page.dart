import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/presentation/settings/widgets/custom_tile_unit.dart';

class CustomizeUnitPage extends StatelessWidget {
  const CustomizeUnitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        shadowColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        title: Text(
          'Units',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: ConstantStyle.height10),
            const CustomTileUnit(label: 'Temperature', data: ['\u00B0C', '\u00B0F']),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const CustomTileUnit(label: 'Wind Speed', data: ['m/s', 'km/h', 'mph']),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const CustomTileUnit(label: 'Pressure', data: ['hPa', 'inHg']),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const CustomTileUnit(label: 'Precipitation', data: ['mm', 'in']),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const CustomTileUnit(label: 'Distance', data: ['km', 'mi']),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const CustomTileUnit(label: 'Time Format', data: ['24-hour', '12-hour']),
            Divider(color: Theme.of(context).colorScheme.secondary),
          ],
        ),
      ),
    );
  }
}
