import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/presentation/settings/cutomize_unit_page.dart';
import 'package:open_weather/presentation/settings/different_weather_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
          'Settings',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DifferentWeatherPage(
                    data: context.read<WeatherBloc>().state.generalWeather?.current,
                  ),
                ),
              ),
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Different weather?',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: ConstantStyle.size16,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.secondary,
              height: ConstantStyle.height0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomizeUnitPage()));
              },
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Customize Unit',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: ConstantStyle.size16,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.secondary,
              height: ConstantStyle.height0,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Data',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Text(
                'One Call API',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              MessagesConstants.loremIpsum,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
