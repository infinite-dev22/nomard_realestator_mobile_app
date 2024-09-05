import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';

import '../../../global/presentation/widget/icon_holders/my_round_icon.dart';

class NotificationItem extends StatelessWidget {
  final double? size;
  final NotificationModel notification;

  const NotificationItem(
    this.notification, {
    super.key,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Theme.of(context).colorScheme.shadow,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            MyRoundIcon.medium(
              icon: notification.icon,
              backgroundColor: notification.backgroundColor,
              iconColor: Colors.white,size: 50,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText.bold(notification.title),
                MyText.small(
                  notification.bodyPreview,
                  color: secondary,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: secondary,
                      size: 15,
                    ),
                    const SizedBox(width: 10),
                    MyText.caption(
                      "${notification.time} Ago",
                      color: secondary,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
