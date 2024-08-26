import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/images/user_profile_image.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserProfileImage("assets/images/house_1.jpg"),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText.bold("Hi, Owen Levi"),
                MyText.caption(
                  "New York City, USA",
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ],
        ),
        Badge(
          label: MyText.caption(
            "5",
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const MyRoundIcon.small(
            icon: Icons.notifications_none_rounded,
            elevated: true,
          ),
        ),
      ],
    );
  }
}
