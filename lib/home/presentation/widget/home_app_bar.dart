import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_notification_button.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
        MyNotificationButton(
          onTap: () => GoRouter.of(context).pushNamed("notification"),
        ),
      ],
    );
  }
}
