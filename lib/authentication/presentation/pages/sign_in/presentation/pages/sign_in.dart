import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/widget/sign_in_layout.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: (GoRouter.of(context).canPop() == true)
            ? MyBackButton(
                onTap: () {},
              )
            : null,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Center(
            child: Column(
              children: [
                MyText.h1("Sign In"),
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
      body: const SignInLayout(),
    );
  }
}
