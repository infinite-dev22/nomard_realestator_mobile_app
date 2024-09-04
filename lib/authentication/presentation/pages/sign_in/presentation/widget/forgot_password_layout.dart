import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/widget/sign_in_back_link.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/widget/sign_in_link.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/or_widget.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/social_auth_widget.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import 'forgot_password_link.dart';

class ForgotPasswordLayout extends StatelessWidget {
  const ForgotPasswordLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _widgets = <Widget>[
          const MyTextField(
            hint: "Email",
            prefixIcon: Icon(MingCute.mail_line),
          ),
          MyButton(
            text: "Send",
            onTap: () => GoRouter.of(context).pushNamed("otp"),
          ),
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
            const SizedBox(height: 24),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: SignInBackLink(
              onTap: () => GoRouter.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
