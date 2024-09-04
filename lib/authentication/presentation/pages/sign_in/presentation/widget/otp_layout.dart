import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_otp_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class OTPLayout extends StatelessWidget {
  const OTPLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _widgets = <Widget>[
      const MyOtpField(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText.regular(
            "Resend Code In",
            color: secondaryDark,
            softWrap: true,
          ),
          const SizedBox(width: 5),
          MyText.regular(
            "20",
            color: Theme.of(context).colorScheme.primary,
            softWrap: true,
          ),
          const SizedBox(width: 5),
          MyText.regular(
            "Sec",
            color: secondaryDark,
            softWrap: true,
          ),
        ],
      ),
      MyButton(
        text: "Verify",
        onTap: () => GoRouter.of(context).pushNamed("reset"),
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
      itemCount: _widgets.length,
      itemBuilder: (context, index) => _widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
      const SizedBox(height: 24),
    );
  }
}
