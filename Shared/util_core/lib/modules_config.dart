//Module Config
import 'routes/controllers/routes_controller.dart';

abstract class IModuleConfig {
  RoutesController routesController;

  IModuleConfig(this.routesController);
}
