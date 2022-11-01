import 'package:flutter/material.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);

typedef IRoutesMap = Map<String, WidgetBuilderArgs>;

abstract class IModuleRoutes {
  IModuleRoutes(this.modulePrefix);

  final String modulePrefix;

  IRoutesMap routes = {};
}
