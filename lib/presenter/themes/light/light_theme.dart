import 'package:flutter/material.dart';

import '../themes.dart';
import 'light_colors.dart';

class LightTheme implements ThemeTemplate {
  @override
  ThemeColors get themeColors => LightColors(
        dangerColor: ConstantColors.dangerColor,
        successColor: ConstantColors.successColor,
      );

  @override
  ThemeData getTheme() => ThemeData(
      scaffoldBackgroundColor: themeColors.scaffoldBackColor,
      primaryColor: themeColors.primaryColor);
}
