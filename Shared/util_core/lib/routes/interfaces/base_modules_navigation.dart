import 'package:flutter/material.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object args);
final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

abstract class IBaseModuleNavigation {
  final Map<String, WidgetBuilderArgs> routes = {};
  Map<String, WidgetBuilderArgs> get baseRoutes;

  void registerRoutes();
}
