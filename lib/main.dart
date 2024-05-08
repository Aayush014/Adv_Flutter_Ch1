import 'package:adv_flutter_ch1/Theme%20Change/main_screen.dart';
import 'package:flutter/material.dart';

import 'Theme Change/Utils/themes.dart';

void main() {
  runApp(const MainScreen());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        themeMode: ThemeMode.system,
        home: MainScreen()
    );
  }
}

