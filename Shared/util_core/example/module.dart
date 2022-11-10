import 'package:flutter/material.dart';

import 'package:util_core/main.dart';
import 'package:util_core/modules_config.dart';
import 'package:util_core/routes/controllers/routes_controller.dart';
import 'package:util_core/routes/feature_routes.dart';
import 'package:util_core/routes/models/route_model.dart';
import 'package:util_core/routes/type_defs.dart';

/// Every Module has this configuration
class ModuleExampleConfig implements IModuleConfig {
  @override
  RoutesController routesController;

  ModuleExampleConfig(this.routesController);
}

class ModuleExampleRoutes implements RoutesModel {
  @override
  GlobalKey<NavigatorState>? baseNavigatorKey = GlobalKey<NavigatorState>();

  @override
  List<IFeatureRoutes> routesByFeature = [
    Feature1Routes(),
  ];
}

class Feature1Routes implements IFeatureRoutes {
  @override
  List<BaseRoutes> get routeBase => [/* Feature Routess */];
}

/// --> And then in your core you do this:
// Create your core
class TestCore extends CoreConfiguration {
  @override
  RouterConfig<Object> getRouterConfig() {
    final modulesRoutes = modules
        .map<BaseRoutes>((element) => element.routesController.getRootRouter())
        .toList();

    return PackageRouter(routes: modulesRoutes);
  }
}

final core = TestCore();

Widget buildContext(BuildContext context) {
  return MaterialApp.router(
    routerConfig: core.getRouterConfig(),
  );
}
