import 'package:flutter/material.dart';
import 'package:real_estate_property/on_board/presentation/pages/on_boarding_one.dart';

import 'global/presentation/theming/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate Property',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const OnBoarding(),
    );
  }
}
