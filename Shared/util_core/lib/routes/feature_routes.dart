import 'type_defs.dart';

///```dart
/// class Feature1Routes implements IFeatureRoutes {
///   @override
///   List<RouteBase> get routeBase => [/* Feature Routess */];
/// }
/// ```
abstract class IFeatureRoutes {
  final List<BaseRoutes> routeBase;

  IFeatureRoutes(this.routeBase);
}
