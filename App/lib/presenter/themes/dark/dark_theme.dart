import 'package:flutter/material.dart';

import '../themes.dart';
import 'dark_colors.dart';

class DarkTheme implements ThemeTemplate {
  @override
  ThemeColors get themeColors => DarkColors(
      dangerColor: ConstantColors.dangerColor,
      successColor: ConstantColors.dangerColor);

  @override
  ThemeData getTheme() => ThemeData(
      primaryColor: themeColors.primaryColor,
      scaffoldBackgroundColor: themeColors.scaffoldBackColor);
}
