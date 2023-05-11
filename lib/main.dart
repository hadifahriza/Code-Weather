import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';
import 'injection.dart' as di;

void main() async {
  di.init();
  await dotenv.load(fileName: ".env");
  runApp(const App());
}
