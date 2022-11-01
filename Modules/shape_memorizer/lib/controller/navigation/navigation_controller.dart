import 'package:flutter/material.dart';
import 'package:util_core/main.dart';

class SMNavigation implements IModuleRoutes {
  @override
  String get modulePrefix => 'shapeMemorizer';

  @override
  IRoutesMap routes = {
    'Home': (context, args) => Container(),
    'Login': (context, args) => Container(),
  };
}
