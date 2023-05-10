import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_weather/core/constants/app_constants.dart';
import 'package:open_weather/core/styles/color_style.dart';
import 'package:open_weather/core/styles/text_style.dart';

import 'presentation/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        textTheme: CustomTextStyle.textTheme,
        colorScheme: CustomColorStyle.lightColorScheme,
      ),
      home: const HomePage(),
    );
  }
}
