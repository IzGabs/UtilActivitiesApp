//Module Routes Config
import 'package:flutter/material.dart';

import '../feature_routes.dart';

/// Every Module has to implement this Model
///
/// Example:
/// ```dart
///  class ModuleExampleRoutes implements RoutesModel {
///    @override
///    GlobalKey<NavigatorState>? baseNavigatorKey;
///
///    @override
///    List<IFeatureRoutes> routeBase = [
///      FeatureExampleRoutes(),
///    ];
///  }
/// ```
abstract class RoutesModel {
  final List<IFeatureRoutes> routesByFeature;
  final GlobalKey<NavigatorState>? baseNavigatorKey;

  RoutesModel({
    this.baseNavigatorKey,
    required this.routesByFeature,
  });
}
