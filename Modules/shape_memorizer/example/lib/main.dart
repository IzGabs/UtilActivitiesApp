import 'package:flutter/material.dart';
import 'package:shape_memorizer/shape_memorizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: ShapeMemo(currentTheme: theme),
      theme: theme,
    );
  }
}
