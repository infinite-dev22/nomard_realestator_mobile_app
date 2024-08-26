import 'package:flutter/material.dart';

import '../../../authentication/presentation/pages/sign_in/presentation/pages/sign_in.dart';
import '../../../authentication/presentation/pages/sign_up/presentation/pages/sign_up.dart';
import '../../../home/presentation/pages/home.dart';
import '../../../home/presentation/widget/home_layout.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}
