import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/widget/sign_in_link.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/or_widget.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/social_auth_widget.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';

import 'forgot_password_link.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _widgets = <Widget>[
      Column(
        children: [
          const MyTextField(
            hint: "Email",
            prefixIcon: Icon(MingCute.mail_line),
          ),
          const SizedBox(height: 24),
          const MyTextField.obsecure(
            hint: "Password",
            prefixIcon: Icon(MingCute.lock_line),
          ),
          const SizedBox(height: 24),
          ForgotPasswordLink(
            onTap: () => GoRouter.of(context).pushNamed("forgot"),
          ),
          const SizedBox(height: 24),
          MyButton(
            text: "Sign In",
            onTap: () => GoRouter.of(context).goNamed("home"),
          ),
        ],
      ),
      const OrWidget(),
      const SocialAuthWidget(),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            itemCount: _widgets.length,
            itemBuilder: (context, index) => _widgets[index],
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 60),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: SignInLink(
              onTap: () => GoRouter.of(context).goNamed("signup"),
            ),
          ),
        ),
      ],
    );
  }
}
