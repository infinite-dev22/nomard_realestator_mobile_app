import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/profile/presentation/widget/profile_layout.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: (GoRouter.of(context).canPop() == true)
            ? MyBackButton(
                onTap: () => GoRouter.of(context).pop(),
              )
            : null,
        title: MyText.h2("Profile"),
      ),
      body: const ProfileLayout(),
    );
  }
}
