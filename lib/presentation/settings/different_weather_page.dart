import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/core/types/enumerated.dart';
import 'package:open_weather/core/utils/temp_converter.dart';
import 'package:open_weather/domain/entities/current_weather.dart';
import 'package:open_weather/presentation/settings/widgets/current_tile.dart';
import 'package:open_weather/presentation/settings/widgets/sky_like_box.dart';

class DifferentWeatherPage extends StatefulWidget {
  final CurrentWeather? data;

  const DifferentWeatherPage({
    super.key,
    this.data,
  });

  @override
  State<DifferentWeatherPage> createState() => _DifferentWeatherPageState();
}

class _DifferentWeatherPageState extends State<DifferentWeatherPage> {
  int selectedIndex = 0;
  double currentTemp = 0;
  double currentWind = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      currentTemp = widget.data?.temp ?? 0;
      currentWind = widget.data?.wind_speed ?? 0;
    });
  }

  void changeSelectedIndex(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  void changeCurrentTemp(double value) {
    setState(() {
      currentTemp = value;
    });
  }

  void changeCurrentWind(double value) {
    setState(() {
      currentWind = value;
    });
  }

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
          'Different Weather?',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: ConstantStyle.height10),
            CurrentTile(
              label: 'What is the sky like?',
              data: widget.data?.weather?.first.description ?? '',
            ),
            const SizedBox(height: ConstantStyle.height10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(ConstantStyle.opacity25),
                borderRadius: BorderRadius.circular(ConstantStyle.radius10),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: ConstantStyle.padding10,
                vertical: ConstantStyle.padding10,
              ),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: ConstantStyle.height10,
                crossAxisSpacing: ConstantStyle.width10,
                physics: const NeverScrollableScrollPhysics(),
                children: SkyLike.values
                    .map((e) => SkyLikeBox(
                          data: e,
                          isSelected: e.index == selectedIndex,
                          onTap: () => changeSelectedIndex(e.index),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: ConstantStyle.height10),
            CurrentTile(
              label: 'Temperature',
              data: TempConverter.kelvinToCelcius(widget.data?.temp ?? 0),
            ),
            const SizedBox(height: ConstantStyle.height10),
            Slider(
              min: 0,
              max: 33,
              divisions: 33,
              value: currentTemp,
              onChanged: (value) => changeCurrentTemp(value),
            ),
            const SizedBox(height: ConstantStyle.height10),
            CurrentTile(
              label: 'Wind',
              data: '${widget.data?.wind_speed ?? 0}',
            ),
            const SizedBox(height: ConstantStyle.height10),
            Slider(
              min: 0,
              max: 3,
              divisions: 2,
              value: currentWind,
              onChanged: (value) => changeCurrentWind(value),
            ),
            const SizedBox(height: ConstantStyle.height10),
            MaterialButton(
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ConstantStyle.radius10),
              ),
              child: Text(
                'SEND',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: ConstantStyle.height10),
          ],
        ),
      ),
    );
  }
}
