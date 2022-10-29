import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:util_core/main.dart';
import 'package:util_core/routes/navigation_extensions.dart';

class MockModuleNav extends Mock implements IBaseModuleNavigation {
  @override
  String get moduleSufix => 'Test';

  @override
  Map<String, WidgetBuilderArgs> moduleRoutes = {
    'homeExample': (context, args) => throw UnimplementedError(),
  };
}

void main() {
  final mockModuleNav = MockModuleNav();
  final routerimpl = NavigationRouter([mockModuleNav]);
  test(
    'Must add prefix to routes',
    () {
      //Do
      mockModuleNav.formatRoutesPrefix();

      //Test
      expect(mockModuleNav.moduleRoutes.keys.first, 'Test/homeExample',
          reason:
              'Should format all prefixes to ensure unique keys over the app');
    },
  );

  test(
    'Must add all routes from all apps',
    () {
      mockModuleNav.moduleRoutes.addAll({
        'test2': (context, args) => throw UnimplementedError(),
      });

      //Do
      routerimpl.registerNavigation();

      //Test
      expect(routerimpl.appRoutes.length, 2);
    },
  );
}
