import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:util_core/modules_config.dart';
import 'package:util_core/routes/controllers/routes_controller.dart';
import 'package:util_core/util/pre_core_config.dart';

import 'util_fixtures.dart';

void main() {
  final mockBaseRoute = MockBaseRoutes();

  final mockFeatureRoutes = MockIFeatureRoutes([mockBaseRoute]);

  final routesModel = RoutesModelFixture(routesByFeature: [mockFeatureRoutes]);

  final firstModule = MockIModuleConfig(RoutesController(routesModel));

  final setOfModules = <IModuleConfig>{firstModule};

  final coreUtil = UtilCore(modules: setOfModules);

  test('Test getRouterConfigMethod', () {
    //Arrange
    //when(() => mockBaseRoute.).thenReturn([]);

    //Then
    final result = coreUtil.getRouterConfig();

    //Expects
    expect(result, isA<RouterConfig<Object?>>());
  });
}
