import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/widget/sign_in_link.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/or_widget.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/social_auth_widget.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import 'forgot_password_link.dart';

class ResetPasswordLayout extends StatelessWidget {
  const ResetPasswordLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyRoundIcon.small(
                  icon: Icons.arrow_back,
                  elevated: true,
                ),
              ],
            ),
            MyText.h1("Reset Password"),
            const SizedBox(height: 16),
            SizedBox(
              width: constraints.maxWidth * .6,
              child: MyText.regular(
                "Lorem ipsum is simply dummy text ot the printing and typesetting",
                color: secondary,
                softWrap: true,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                const MyTextField.obsecure(
                  hint: "Password",
                  prefixIcon: Icon(MingCute.lock_line),
                ),
                const MyTextField.obsecure(
                  hint: "Confirm Password",
                  prefixIcon: Icon(MingCute.lock_line),
                ),
                const SizedBox(height: 16),
                MyButton(
                  text: "Sign In",
                  onTap: () {},
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}

class MyCheckbox {}
