import 'routes/interfaces/module_routes_interface.dart';

abstract class IModuleConfig {
  final IModuleRoutes routes;

  IModuleConfig(this.routes);
}

extension RouterVacuum on Set<IModuleConfig> {
  Set<IModuleRoutes> absorbRoutes() => map((element) => element.routes).toSet();
}
