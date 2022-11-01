import 'package:flutter/material.dart';
import 'package:util_core/routes/extensions/navigation_extensions.dart';

import 'interfaces/module_routes_interface.dart';
import 'interfaces/navigator_router.dart';

class NavigationRouter implements INavigationRouter {
  @override
  IRoutesMap appRoutes = {/* Auto filled */};

  @override
  void regModulesRoutes(Set<IModuleRoutes> modulesRoutes) {
    for (var element in modulesRoutes) {
      try {
        element.formatRoutesPrefix();

        appRoutes.addAll(element.routes);
      } catch (e) {
        //print(e.toString());
      }
    }
  }

  @override
  Route? generateRoute(RouteSettings settings) {
    final routerName = settings.name;
    final routerArgs = settings.arguments;

    var navigateTo = appRoutes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routerArgs),
    );
  }
}
