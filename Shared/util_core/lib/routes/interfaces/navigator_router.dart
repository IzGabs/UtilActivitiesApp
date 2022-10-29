import 'package:flutter/material.dart';

import 'base_modules_navigation.dart';

abstract class INavigationRouter {
  INavigationRouter(this.modules);

  final Map<String, WidgetBuilderArgs> appRoutes = {};
  final List<IBaseModuleNavigation> modules;

  void registerNavigation();
  Route<dynamic>? generateRoute(RouteSettings settings);
}
