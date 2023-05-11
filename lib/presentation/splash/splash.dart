import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather/bloc/location/location_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/presentation/home/home_page.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => routeToHomePage());
  }

  Future<bool> isLocationAllowed() async {
    LocationPermission permission = await Geolocator.checkPermission();

    return permission != LocationPermission.denied && permission != LocationPermission.deniedForever;
  }

  void permissionHandler() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }
  }

  void fetchData() {
    context.read<LocationBloc>().add(const LocationEvent.started());
    context.read<WeatherBloc>().add(WeatherEvent.started(context.read<LocationBloc>().state.currentPosition));
  }

  void routeToHomePage() async {
    if (await isLocationAllowed()) {
      if (context.read<LocationBloc>().state.currentPosition != null && context.read<WeatherBloc>().state.generalWeather != null) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false,
        );
      } else {
        fetchData();
      }
    } else {
      permissionHandler();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                MessagesConstants.thereIsUnexpectedError,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              MaterialButton(
                onPressed: () {
                  routeToHomePage();
                },
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ConstantStyle.radius10)),
                child: Text(
                  MessagesConstants.tryAgain,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
