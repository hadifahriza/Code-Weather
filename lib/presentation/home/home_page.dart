import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/location/location_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';
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

  void fetchData() {
    context.read<LocationBloc>().add(const LocationEvent.started());
    context.read<WeatherBloc>().add(WeatherEvent.started(context.read<LocationBloc>().state.currentPosition));
  }

  void changeList() {
    setState(() {
      isList = !isList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            'Weather in your location',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          // title: TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(ConstantStyle.radius10),
          //       borderSide: BorderSide.none,
          //     ),
          //     filled: true,
          //     fillColor: Theme.of(context).colorScheme.secondary.withOpacity(ConstantStyle.opacity25),
          //     contentPadding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
          //     prefixIcon: Icon(
          //       Icons.search,
          //       color: Theme.of(context).colorScheme.onBackground,
          //     ),
          //   ),
          // ),
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
          onRefresh: () async => fetchData(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10, vertical: ConstantStyle.padding10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Temperature(data: context.read<WeatherBloc>().state.generalWeather?.current),
                // MaterialButton(
                //   onPressed: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
                //   },
                //   color: Theme.of(context).colorScheme.primary,
                //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ConstantStyle.radius10)),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(
                //         Icons.info,
                //         color: Theme.of(context).colorScheme.onPrimary,
                //       ),
                //       const SizedBox(width: ConstantStyle.width10),
                //       Text(
                //         'Waspada Hujan Lebat - Moderate',
                //         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //               color: Theme.of(context).colorScheme.onPrimary,
                //             ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: ConstantStyle.height20),
                WeatherBox(data: context.read<WeatherBloc>().state.generalWeather?.current),
                const SizedBox(height: ConstantStyle.height20),
                HourList(data: context.read<WeatherBloc>().state.generalWeather?.hourly),
                const SizedBox(height: ConstantStyle.height20),
                isList
                    ? DateList(onTap: (value) => changeList)
                    : DetailList(
                        onBack: changeList,
                        data: context.read<WeatherBloc>().state.generalWeather?.daily,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
