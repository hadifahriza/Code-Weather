import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_weather/core/constants/app_constants.dart';

import 'presentation/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyLarge: GoogleFonts.poppins(fontSize: 14),
          bodyMedium: GoogleFonts.poppins(fontSize: 12),
          bodySmall: GoogleFonts.poppins(fontSize: 10),
          titleLarge: GoogleFonts.poppins(fontSize: 20),
          titleMedium: GoogleFonts.poppins(fontSize: 18),
          titleSmall: GoogleFonts.poppins(fontSize: 16),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.orange,
          onPrimary: Colors.white,
          secondary: Colors.grey,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.orange,
          onSurface: Colors.white,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
