import 'package:flutter/material.dart';

import 'package:util_core/main.dart';

import '../routes/type_defs.dart';

class UtilCore extends CoreConfiguration {
  UtilCore({super.modules});

  @override
  RouterConfig<Object?> getRouterConfig() {
    final modulesRoutes = modules.map<BaseRoutes>((element) {
      return element.routesController.getRootRouter();
    }).toList();

    return PackageRouter(
      routes: modulesRoutes,
    );
  }
}
