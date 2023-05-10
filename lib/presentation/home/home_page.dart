import 'package:flutter/material.dart';
import 'package:open_weather/presentation/details/details.dart';
import 'package:open_weather/presentation/home/widgets/detail_list.dart';
import 'package:open_weather/presentation/search/search_page.dart';
import 'package:open_weather/presentation/settings/settings_page.dart';

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
  bool isList = false;

  void changeList() {
    setState(() {
      isList = !isList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
          },
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()));
            },
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              isList ? DateList(onTap: changeList) : DetailList(onTap: changeList),
            ],
          ),
        ),
      ),
    );
  }
}
