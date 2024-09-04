import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/my_check_box.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/or_widget.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/sign_up_link.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/social_auth_widget.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class SignUpLayout extends StatelessWidget {
  const SignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _agree = false;

    var _widgets = <Widget>[
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
            child: SignUpLink(
              onTap: () => GoRouter.of(context).push("signin"),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCheckbox {}
