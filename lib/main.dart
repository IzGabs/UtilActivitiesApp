import 'package:flutter/material.dart';

import 'presenter/home/home_page.dart';
import 'presenter/themes/dark/dark_theme.dart';
import 'presenter/themes/light/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Util App',
      themeMode: ThemeMode.system,
      darkTheme: DarkTheme().getTheme(),
      theme: LightTheme().getTheme(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
