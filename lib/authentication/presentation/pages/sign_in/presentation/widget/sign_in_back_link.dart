import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class SignInBackLink extends StatelessWidget {
  final Function()? onTap;

  const SignInBackLink({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText.caption("Go Back To"),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "Sign In",
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
