import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class SignInLink extends StatelessWidget {
  final Function()? onTap;

  const SignInLink({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText.caption("Don't Have An Account?"),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "Sign Up",
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
