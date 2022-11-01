library util_core;

import 'main.dart';
import 'modules_cfg.dart';

export 'routes/interfaces/module_routes_interface.dart';
export 'routes/interfaces/navigator_router.dart';
export 'routes/navigation_router.dart';

abstract class CoreAbs {
  final INavigationRouter navigation;
  final Set<IModuleConfig> modules;

  CoreAbs({
    required this.navigation,
    this.modules = const {},
  });

  Future<void> init() async {
    navigation.regModulesRoutes(modules.absorbRoutes());
  }
}

class UtilCore extends CoreAbs {
  UtilCore({required super.navigation, super.modules});
}
