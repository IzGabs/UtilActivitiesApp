import 'package:flutter/material.dart';

import '../themes.dart';

class LightColors implements ThemeColors {
  @override
  Color dangerColor;
  @override
  Color successColor;

  @override
  final Color scaffoldBackColor = const Color(0xFFD0D4EC);
  @override
  final Color scondaryColor = const Color(0xFF2E3457);
  @override
  final Color primaryColor = const Color(0xFF6674C1);

  LightColors({
    required this.dangerColor,
    required this.successColor,
  });
}
