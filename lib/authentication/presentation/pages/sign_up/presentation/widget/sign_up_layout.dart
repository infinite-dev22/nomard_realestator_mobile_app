import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/my_check_box.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/or_widget.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/sign_up_link.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/social_auth_widget.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class SignUpLayout extends StatelessWidget {
  const SignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _agree = false;
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
            MyText.h1("Sign Up"),
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
                const MyTextField(
                  hint: "Username",
                  prefixIcon: Icon(MingCute.user_2_line),
                ),
                const SizedBox(height: 16),
                const MyTextField(
                  hint: "Email",
                  prefixIcon: Icon(MingCute.mail_line),
                ),
                const SizedBox(height: 16),
                const MyTextField.obsecure(
                  hint: "Password",
                  prefixIcon: Icon(MingCute.lock_line),
                ),
                const SizedBox(height: 16),
                MyTile.flat(
                  text: "Country",
                  icon: MingCute.earth_2_line,
                  isNavigator: true,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                MyCheckBox(
                  title: "I agree to the terms and conditions",
                  value: _agree,
                  onChanged: (value) => _agree = !_agree,
                ),
                const SizedBox(height: 16),
                MyButton(
                  text: "Sign Up",
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),
            const OrWidget(),
            const SizedBox(height: 50),
            const SocialAuthWidget(),
            const SizedBox(height: 150),
            SignUpLink(
              onTap: () {},
            ),
          ],
        );
      }),
    );
  }
}

class MyCheckbox {}
