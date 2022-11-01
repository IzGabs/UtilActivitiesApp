import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:util_core/main.dart';
import 'package:util_core/routes/navigation_extensions.dart';

class MockModuleNav extends Mock implements IModuleRoutes {
  @override
  String get modulePrefix => 'Test';

  @override
  IRoutesMap routes = {
    'Home': (context, args) => throw UnimplementedError(),
    'Login': (context, args) => throw UnimplementedError(),
  };
}

void main() {
  final mockModuleNav = MockModuleNav();
  final routerimpl = NavigationRouter();

  test(
    'Must add prefix to routes',
    () {
      //Act
      mockModuleNav.formatRoutesPrefix();

      //Assert
      expect(
        mockModuleNav.routes.keys.first,
        'Test/Home',
        reason: 'Should format all prefixes to ensure unique keys over the app',
      );
    },
  );

  group('Test registerNavigation', () {
    setUp(() {
      mockModuleNav.routes.addAll(
        {'test2': (context, args) => throw UnimplementedError()},
      );
      routerimpl.regModulesRoutes({mockModuleNav});
    });

    test('Must add all routes from all apps', () {
      expect(routerimpl.appRoutes.length, 3);
    });
  });

  group('Test generateRoute', () {
    setUp(() => routerimpl.regModulesRoutes({mockModuleNav}));
    test('Must generate routes given the name', () {
      // Arrange
      const settings = RouteSettings(name: 'Test/Home');

      // Act
      final route = routerimpl.generateRoute(settings);

      // Assert
      expect(route, isNotNull);
      expect(route, isA<MaterialPageRoute>());
    });
  });
}
