import 'interfaces/module_routes_interface.dart';

extension FormatPrefix on IModuleRoutes {
  void formatRoutesPrefix() {
    final temp = routes.map(
      (key, value) => MapEntry('$modulePrefix/$key', value),
    );

    routes = temp;
  }
}
