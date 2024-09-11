import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/images/user_profile_image.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class EditProfileLayout extends StatelessWidget {
  const EditProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      Stack(
        alignment: Alignment.center,
        children: [
          const UserProfileImage(
            "assets/images/profile.jpg",
            size: 100,
          ),
          Positioned(
            bottom: 5,
            right: 160,
            child: SizedBox(
              height: 30,
              width: 30,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  MingCute.camera_2_line,
                  size: 15,
                ),
                color: secondaryLight,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 16),
        ],
      ),
      const MyTextField(
        hint: "Username",
        prefixIcon: Icon(MingCute.user_2_line),
      ),
      const MyTextField(
        hint: "Email",
        prefixIcon: Icon(MingCute.mail_line),
      ),
      const MyTextField.obsecure(
        hint: "Password",
        prefixIcon: Icon(MingCute.lock_line),
      ),
      MyTile.flat(
        text: "Country",
        icon: MingCute.earth_2_line,
        isNavigator: true,
        onTap: () {},
      ),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: widgets.length,
            itemBuilder: (context, index) => widgets[index],
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 24),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: MyButton(
              text: "Save Update",
              onTap: () => GoRouter.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
