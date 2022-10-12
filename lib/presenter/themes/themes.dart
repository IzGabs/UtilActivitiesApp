import 'package:flutter/material.dart';

abstract class ThemeTemplate {
  final ThemeColors themeColors;

  ThemeTemplate(this.themeColors);
  ThemeData getTheme();
}

abstract class ConstantColors {
  static const Color dangerColor = Color(0xFFEB5757);
  static const Color successColor = Color(0xFF27AE60);
}

abstract class ThemeColors {
  final Color primaryColor;
  final Color scaffoldBackColor;
  final Color scondaryColor;

  late Color dangerColor;
  late Color successColor;

  ThemeColors({
    required this.primaryColor,
    required this.dangerColor,
    required this.successColor,
    required this.scaffoldBackColor,
    required this.scondaryColor,
  });
}
