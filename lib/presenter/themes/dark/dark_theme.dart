import 'package:flutter/material.dart';
import 'package:utilactivities/presenter/themes/dark/dark_colors.dart';

import '../themes.dart';

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
