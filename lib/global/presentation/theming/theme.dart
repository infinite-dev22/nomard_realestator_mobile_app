import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: bgLight,
      primary: primary,
      secondary: secondary,
    ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      surface: bgDark,
      primary: primary,
      secondary: secondary,
    ));
