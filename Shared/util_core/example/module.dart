import 'package:flutter/material.dart';
import 'package:util_core/main.dart';
import 'package:util_core/modules_cfg.dart';

/// Create your core
class TestCore extends CoreAbs {
  TestCore({required super.navigation, super.modules});
}

/// Modules base
class ModuleExample implements IModuleConfig {
  @override
  IModuleRoutes routes = ModuleExampleRoutes();
}

/// Modules base Routing System
class ModuleExampleRoutes implements IModuleRoutes {
  @override
  String get modulePrefix => '/ModuleExample';

  @override
  IRoutesMap routes = {
    'Home': (context, args) => Container(),
    'Login': (context, args) => Container(),
  };
}

/// Instantiate our Module
final moduleExample = ModuleExample();

/// Apply it to our Core with the respective navigationRouter
final core = TestCore(
  navigation: NavigationRouter(),
  modules: {
    moduleExample,
  },
);

/// READY TO USE
void main() {
  core.init();
}
