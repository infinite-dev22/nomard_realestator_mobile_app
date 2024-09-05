import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/images/user_profile_image.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      MyTile.navigator(
        icon: MingCute.earth_2_line,
        text: "Language",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: Icons.notifications_none_rounded,
        text: "Notification Settings",
        onTap: () {},
      ),
      MyTile.navigator(
        icon: MingCute.delete_2_line,
        text: "Deactivating Account",
        onTap: () => GoRouter.of(context).goNamed("sign_in"),
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
