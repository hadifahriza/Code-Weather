import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/location/location_bloc.dart';
import 'package:open_weather/core/constants/app_constants.dart';
import 'package:open_weather/core/styles/color_style.dart';
import 'package:open_weather/core/styles/text_style.dart';
import 'package:open_weather/injection.dart';
import 'package:open_weather/presentation/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('debug');
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationBloc>(
          create: (context) => getIt<LocationBloc>(),
        ),
      ],
      child: MaterialApp(
        title: AppConstants.appName,
        theme: ThemeData(
          textTheme: CustomTextStyle.textTheme,
          colorScheme: CustomColorStyle.lightColorScheme,
        ),
        home: const HomePage(),
      ),
    );
  }
}
