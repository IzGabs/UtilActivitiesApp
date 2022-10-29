import 'package:flutter/material.dart';
import 'package:util_core/routes/navigation_extensions.dart';

import 'interfaces/base_modules_navigation.dart';
import 'interfaces/navigator_router.dart';

class NavigationRouter implements INavigationRouter {
  NavigationRouter(this.modules);

  @override
  final List<IBaseModuleNavigation> modules;

  @override
  Map<String, WidgetBuilderArgs> appRoutes = {};

  @override
  void registerNavigation() {
    for (var element in modules) {
      try {
        element.formatRoutesPrefix();
        appRoutes.addAll(element.moduleRoutes);
      } catch (e) {
        // print(e.toString());
      }
    }
  }

  @override
  Route? generateRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var navigateTo = appRoutes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routerArgs),
    );
  }
}
