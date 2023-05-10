import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/location/location_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';
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

  @override
  void initState() {
    super.initState();
    debugPrint('home');
    context.read<LocationBloc>().add(const LocationEvent.started());
    print(context.read<LocationBloc>().state.currentPosition);
  }

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
              const SizedBox(width: ConstantStyle.width10),
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
          padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10, vertical: ConstantStyle.padding10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Temperature(),
              MaterialButton(
                onPressed: () {
                  // TODO: change to autoRoute
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
                  context.read<LocationBloc>().add(const LocationEvent.started());
                  print(context.read<LocationBloc>().state.currentPosition);
                },
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ConstantStyle.radius10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    const SizedBox(width: ConstantStyle.width10),
                    Text(
                      'Waspada Hujan Lebat - Moderate',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ConstantStyle.height20),
              const WeatherBox(),
              const SizedBox(height: ConstantStyle.height20),
              const HourList(),
              const SizedBox(height: ConstantStyle.height20),
              isList ? DateList(onTap: changeList) : DetailList(onTap: changeList),
            ],
          ),
        ),
      ),
    );
  }
}
