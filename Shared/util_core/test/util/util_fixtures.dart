import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mocktail/mocktail.dart';
import 'package:util_core/modules_config.dart';
import 'package:util_core/routes/controllers/routes_controller.dart';
import 'package:util_core/routes/feature_routes.dart';
import 'package:util_core/routes/models/route_model.dart';
import 'package:util_core/routes/type_defs.dart';

class MockIModuleConfig extends Mock implements IModuleConfig {
  MockIModuleConfig(this.routesController);

  @override
  final RoutesController routesController;
}

class RoutesModelFixture implements RoutesModel {
  @override
  GlobalKey<NavigatorState>? baseNavigatorKey;

  @override
  final List<IFeatureRoutes> routesByFeature;

  RoutesModelFixture({
    this.baseNavigatorKey,
    required this.routesByFeature,
  });
}

class MockIFeatureRoutes extends Mock implements IFeatureRoutes {
  @override
  final List<BaseRoutes> routeBase;

  MockIFeatureRoutes(this.routeBase);
}

class MockBaseRoutes extends Mock implements BaseRoutes {}
