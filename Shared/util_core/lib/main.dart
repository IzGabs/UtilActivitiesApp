library util_core;

import 'package:util_core/routes/type_defs.dart';

import 'modules_config.dart';

abstract class CoreConfiguration {
  late final Set<IModuleConfig> modules;

  CoreConfiguration({
    this.modules = const {},
  });

  Future<void> init() async {}

  RoutesConfig getRouterConfig();
}
