import 'package:flutter/material.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);
final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

abstract class IBaseModuleNavigation {
  final String modulePrefix;
  Map<String, WidgetBuilderArgs> moduleRoutes = {};

  IBaseModuleNavigation(this.modulePrefix);
}
