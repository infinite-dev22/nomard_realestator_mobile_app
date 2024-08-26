import 'package:flutter/material.dart';

import '../widget/home_layout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeLayout()));
  }
}
