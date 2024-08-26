import 'package:flutter/material.dart';

class ForgotPasswordLink extends StatelessWidget {
  final Function()? onTap;

  const ForgotPasswordLink({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            "Forgot Password",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 11,
              decoration: TextDecoration.underline,
              decorationColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
