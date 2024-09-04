import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/images/user_profile_image.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      Column(
        children: [
          const UserProfileImage(
            "assets/images/house_1.jpg",
            size: 130,
          ),
          MyText.h3("Jonathan Mark Mwigo"),
          MyText.regular(
            "mwigojm@gmail.com",
            color: secondary,
          ),
          const SizedBox(height: 16),
        ],
      ),
      MyTile.navigator(
        icon: MingCute.user_2_line,
        text: "My Account",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.card_pay_line,
        text: "Payment Methods",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.settings_3_line,
        text: "Settings",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.time_line,
        text: "Help Center",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.user_lock_line,
        text: "Privacy",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.exit_line,
        text: "Sign Out",
        onTap: () {},
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: widgets.length,
      itemBuilder: (context, index) => widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 24),
    );
  }
}
