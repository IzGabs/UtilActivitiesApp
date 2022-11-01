import 'package:flutter/material.dart';

import 'module_routes_interface.dart';

abstract class INavigationRouter {
  final IRoutesMap appRoutes = {};

  void regModulesRoutes(Set<IModuleRoutes> modulesRoutes);
  Route<dynamic>? generateRoute(RouteSettings settings);
}
