import 'package:flutter/material.dart';
import 'package:open_weather/presentation/details/details.dart';

import 'widgets/date_list.dart';
import 'widgets/hour_list.dart';
import 'widgets/temperature.dart';
import 'widgets/weather_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Lokasi',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Temperature(),
              MaterialButton(
                onPressed: () {
                  // TODO: change to autoRoute
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
                },
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Waspada Hujan Lebat - Moderate',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const WeatherBox(),
              const SizedBox(height: 20),
              const HourList(),
              const SizedBox(height: 20),
              const DateList(),
            ],
          ),
        ),
      ),
    );
  }
}
