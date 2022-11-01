import 'package:shape_memorizer/controller/navigation/navigation_controller.dart';
import 'package:util_core/modules_cfg.dart';
import 'package:util_core/routes/interfaces/module_routes_interface.dart';

class ModuleShape implements IModuleConfig {
  @override
  IModuleRoutes routes = SMNavigation();
}
