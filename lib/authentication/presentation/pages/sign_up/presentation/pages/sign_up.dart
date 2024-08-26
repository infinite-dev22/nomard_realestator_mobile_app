import 'package:flutter/material.dart';

import '../widget/sign_up_layout.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SignUpLayout()));
  }
}
