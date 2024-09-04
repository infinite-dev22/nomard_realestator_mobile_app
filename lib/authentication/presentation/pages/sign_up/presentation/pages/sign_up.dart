import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/widget/sign_up_layout.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: (GoRouter.of(context).canPop() == true)
            ? MyBackButton(
                onTap: () => GoRouter.of(context).pop(),
              )
            : null,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Center(
            child: Column(
              children: [
                MyText.h1("Sign Up"),
                const SizedBox(height: 16),
                SizedBox(
                  width: size.width * .6,
                  child: MyText.regular(
                    "Lorem ipsum is simply dummy text ot the printing and typesetting",
                    color: secondary,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const SignUpLayout(),
    );
  }
}
