import 'package:flutter/material.dart';

import '../themes.dart';

class DarkColors implements ThemeColors {
  @override
  Color dangerColor;
  @override
  Color successColor;

  @override
  final Color scaffoldBackColor = const Color(0xFF2E3457);
  @override
  final Color scondaryColor = const Color(0xFF2E3457);
  @override
  final Color primaryColor = const Color(0xFF525D9A);

  DarkColors({
    required this.dangerColor,
    required this.successColor,
  });
}
