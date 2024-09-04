import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';

class ResetPasswordLayout extends StatelessWidget {
  const ResetPasswordLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _widgets = <Widget>[
      const MyTextField.obsecure(
        hint: "Password",
        prefixIcon: Icon(MingCute.lock_line),
      ),
      const MyTextField.obsecure(
        hint: "Confirm Password",
        prefixIcon: Icon(MingCute.lock_line),
      ),
      MyButton(
        text: "Reset Password",
        onTap: () => GoRouter.of(context).goNamed("sign_in"),
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
      itemCount: _widgets.length,
      itemBuilder: (context, index) => _widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
    );
  }
}
