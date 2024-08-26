import 'package:flutter/material.dart';

import '../widget/reset_password_layout.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ResetPasswordLayout()));
  }
}
