import 'package:go_router/go_router.dart';

import '../models/route_model.dart';
import '../type_defs.dart';

class RoutesController {
  RoutesController(this.model);

  final RoutesModel model;

  BaseRoutes getRootRouter() {
    final featuresRoutes =
        model.routesByFeature.expand((element) => element.routeBase);

    return ShellRoute(
      navigatorKey: model.baseNavigatorKey,
      routes: featuresRoutes.toList(),
    );
  }
}
