import 'package:flutter/material.dart';
import 'package:shape_memorizer/model/routes_model.dart';

import 'home_screen.dart';

class ShapeMemo extends StatelessWidget {
  final ThemeData? currentTheme;

  const ShapeMemo({super.key, this.currentTheme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: currentTheme, 
      routes: {
        RoutingModel.homeScreen: (context) => const ShapeMemorizerHome(),
        //RoutingModel.photoBoothScreen: (context) => const ShapeMemorizerHome(),
        //RoutingModel.photoInfoScreen: (context) => const ShapeMemorizerHome(),
      },
    );
  }
}
