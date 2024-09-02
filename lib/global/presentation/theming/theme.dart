import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.light(
      surface: bgLight,
      primary: primary,
      secondary: secondary,
      shadow: shadowLight.withOpacity(.4),
    ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      surface: bgDark,
      primary: primary,
      secondary: secondary,
      shadow: shadowDark,
    ));
