import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';

import '../../../global/presentation/widget/icon_holders/my_round_icon.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final double? size;
  final NotificationModel notification;

  const NotificationItem(
    this.notification, {
    super.key,
    required this.icon,
    this.backgroundColor,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: .1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          MyRoundIcon.medium(
            icon: icon,
            backgroundColor: backgroundColor,
            iconColor: Colors.white,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyText.bold(notification.title),
              MyText.regular(
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
    );
  }
}
