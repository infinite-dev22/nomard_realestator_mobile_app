import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_otp_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class OTPLayout extends StatelessWidget {
  const OTPLayout({super.key});

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
            MyText.h1("Enter Your OTP"),
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
                const MyOtpField(),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                MyButton(
                  text: "Verify",
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
